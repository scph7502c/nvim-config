#!/bin/bash

echo "Installing Neovim setup..."

# Make sure the nvim directory exists in ~/.config/
mkdir -p ~/.config/nvim

# Copy the contents of the repository to the nvim directory in ~/.config/
cp -r ./nvim/* ~/.config/nvim/

# Install requirements
echo "Installing required packages (sudo permissions may be required)..."
sudo apt update
sudo apt install -y clang nodejs npm

# Installing `pyright` and `bash-language-server`
npm install -g pyright bash-language-server

# Check if packer.nvim is installed, if not - install it
if [ ! -d "${HOME}/.local/share/nvim/site/pack/packer/start/packer.nvim" ]; then
    echo "Installing packer.nvim..."
    git clone --depth 1 https://github.com/wbthomason/packer.nvim \
      "${HOME}/.local/share/nvim/site/pack/packer/start/packer.nvim"
fi

# Run Neovim in headless mode to install and sync plugins
nvim --headless +PackerSync +qall

echo "Installation complete! Neovim configuration and plugins have been installed."

