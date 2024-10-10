#!/bin/bash

echo "Installing Neovim setup..."

# Create the nvim directory in ~/.config/ if it doesn't exist
mkdir -p ~/.config/nvim

# Copy the configuration to the nvim directory
cp -r * ~/.config/nvim/

# Install plugins using vim-plug
nvim --headless +PlugInstall +qall

echo "Installation complete! Neovim configuration and plugins have been installed."

