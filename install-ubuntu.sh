#!/bin/sh
set -eu
if [ "$(id -u)" -ne 0 ]; then echo "Execute: sudo sh install-ubuntu.sh" >&2; exit 1; fi
if ! grep -Eq '^ID=ubuntu$|^ID="ubuntu"$' /etc/os-release; then
  echo 'Este instalador suporta Ubuntu. Para outros sistemas, verifique a compatibilidade.' >&2; exit 1
fi
apt-get update -qq
apt-get install -y ca-certificates curl
install -d -m 755 /etc/apt/keyrings
curl -fLSs "https://raw.githubusercontent.com/fishixz/fishixz1/main/fishixz-signing-key.asc" -o /etc/apt/keyrings/fishixz.asc
chmod 644 /etc/apt/keyrings/fishixz.asc
printf '%s\n' 'deb [signed-by=/etc/apt/keyrings/fishixz.asc] https://raw.githubusercontent.com/fishixz/fishixz1/main/apt/ubuntu stable main' > /etc/apt/sources.list.d/fishixz.list
apt-get update
apt-get install -y fishixz
printf '\nFISHIXZ pronto. Digite: fishixz\n'
