#!/usr/bin/env bash

set -e

NVIM_CONFIG_DIR="$HOME/.config/nvim"

echo "[*] Installing AstroNvim..."
# Verify if it already exist
if [ -d "$NVIM_CONFIG_DIR" ]; then
    echo "[!] Diretório $NVIM_CONFIG_DIR já existe."
    read -p "Deseja sobrescrever? (y/N): " confirm
    if [[ "$confirm" != "y" && "$confirm" != "Y" ]]; then
        echo "[*] Abortado."
        exit 1
    fi
    rm -rf "$NVIM_CONFIG_DIR"
fi

# Clone AstroNvim
git clone --depth 1 https://github.com/AstroNvim/template "$NVIM_CONFIG_DIR"

rm -rf "$NVIM_CONFIG_DIR/.git"
