#!/bin/bash

echo "Installing Neovim setup..."

mkdir -p ~/.config/nvim

cp -r . ~/.config/nvim

if [ ! -d "${HOME}/.local/share/nvim/site/pack/packer/start/packer.nvim" ]; then
    echo "Installing packer.nvim..."
    git clone --depth 1 https://github.com/wbthomason/packer.nvim \
      "${HOME}/.local/share/nvim/site/pack/packer/start/packer.nvim"
fi

nvim --headless +PackerSync +qall

echo "Installation complete! Neovim configuration and plugins have been installed."
