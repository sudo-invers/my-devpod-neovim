#!/usr/bin/env bash

set -e

NVIM_CONFIG_DIR="$HOME/.config/nvim"

echo "[*] Installing AstroNvim..."

if [ -d "$NVIM_CONFIG_DIR" ]; then
    echo "[!] Diretório $NVIM_CONFIG_DIR já existe. Removendo para instalação limpa..."
    rm -rf "$NVIM_CONFIG_DIR"
fi

# Clone AstroNvim
git clone --depth 1 https://github.com/AstroNvim/template "$NVIM_CONFIG_DIR"

rm -rf "$NVIM_CONFIG_DIR/.git"

echo "[*] Instalação do AstroNvim concluída com sucesso!"
