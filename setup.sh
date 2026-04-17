#!/usr/bin/env bash
set -e

# Installing nvim...
if ! command -v nvim &> /dev/null; then
    echo "[*] Neovim não encontrado. Baixando e instalando (requer sudo)..."
    curl -LO https://github.com/neovim/neovim/releases/download/stable/nvim-linux-x86_64.tar.gz
    sudo tar -C /opt -xzf nvim-linux64.tar.gz
    sudo ln -sf /opt/nvim-linux64/bin/nvim /usr/local/bin/nvim
    rm nvim-linux64.tar.gz
fi

NVIM_CONFIG_DIR="$HOME/.config/nvim"

echo "[*] Configuring AstroNvim..."

if [ -d "$NVIM_CONFIG_DIR" ]; then
    echo "[!] Directory $NVIM_CONFIG_DIR already exist. Removing for a clear installation...
    rm -rf "$NVIM_CONFIG_DIR"
fi

# Clone AstroNvim
git clone --depth 1 https://github.com/AstroNvim/template "$NVIM_CONFIG_DIR"
rm -rf "$NVIM_CONFIG_DIR/.git"

echo "[*] Instalation is sucessuful!"
sleep 1
exit 0
