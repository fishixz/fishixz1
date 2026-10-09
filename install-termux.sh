#!/data/data/com.termux/files/usr/bin/sh
set -eu
if [ -z "${PREFIX:-}" ] || [ ! -x "$PREFIX/bin/pkg" ]; then
  echo 'Execute este instalador dentro do aplicativo Termux oficial.' >&2; exit 1
fi
pkg install -y curl ca-certificates
mkdir -p "$PREFIX/etc/apt/keyrings" "$PREFIX/etc/apt/sources.list.d"
curl -fLSs "https://raw.githubusercontent.com/fishixz/fishixz1/main/fishixz-signing-key.asc" -o "$PREFIX/etc/apt/keyrings/fishixz.asc"
chmod 644 "$PREFIX/etc/apt/keyrings/fishixz.asc"
printf '%s\n' 'deb [signed-by='"$PREFIX"'/etc/apt/keyrings/fishixz.asc] https://raw.githubusercontent.com/fishixz/fishixz1/main/apt/termux stable main' > "$PREFIX/etc/apt/sources.list.d/fishixz.list"
pkg update
pkg install -y fishixz
printf '\nFISHIXZ pronto. Digite: fishixz\n'
