# FISHIXZ / DISTRIBUIÇÃO OFICIAL

Pacotes pré-construídos para **Ubuntu** e **Termux**. Distribuição estática pelo GitHub, com índices APT assinados por chave GPG do projeto. O **código-fonte original fica no repositório privado `fishixz2`**. Os pacotes públicos são compactados, não protegidos contra engenharia reversa.

## Ubuntu

```sh
curl -fLO https://raw.githubusercontent.com/fishixz/fishixz1/main/install-ubuntu.sh
cat install-ubuntu.sh
sudo sh install-ubuntu.sh
fishixz
```

## Termux

```sh
curl -fLO https://raw.githubusercontent.com/fishixz/fishixz1/main/install-termux.sh
cat install-termux.sh
sh install-termux.sh
fishixz
```

Depois: `sudo apt upgrade fishixz` no Ubuntu ou `pkg upgrade fishixz` no Termux.

**Segurança:** login local, não uma barreira do sistema. A senha digitada não é armazenada em texto claro; o verificador scrypt contém um hash com sal. Código comprimido não significa código criptografado.

[Suporte e informações](https://github.com/fishixz/fishixz1)
