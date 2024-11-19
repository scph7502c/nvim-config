#!/bin/bash

echo "Installing Neovim setup..."

# Make sure the nvim directory exists in ~/.config/
mkdir -p ~/.config/nvim

# Copy the contents of the repository to the nvim directory in ~/.config/
cp -r ./nvim/* ~/.config/nvim/

# Wyświetl szczegółową listę zależności i poproś o potwierdzenie instalacji
echo -e "\nThis setup requires the following dependencies to be installed:"
echo "1. Git: For downloading plugins and dependencies."
echo "2. Curl: For downloading additional tools like Oh My Zsh."
echo "3. Build-essential and GCC: For compiling Lua Language Server and other tools."
echo "4. Neovim (v0.8 or higher): The main editor."
echo "5. Python3 and pip: For Python-based tools (e.g., black, flake8)."
echo "6. Node.js and npm: For JavaScript/TypeScript support (e.g., prettier, eslint)."
echo "7. Clang: For C/C++ language support."
echo "8. Shellcheck and shfmt: For shell scripting linting and formatting."

echo -e "\nDo you want to install all of the above dependencies now? (y/n)"
read -r install_dependencies

if [[ "$install_dependencies" =~ ^[Yy]$ ]]; then
    echo "Installing required packages (sudo permissions may be required)..."
    
    # Update package list
    sudo apt update
    
    # Install basic tools
    echo "Installing Git and Curl..."
    sudo apt install -y git curl
    
    echo "Installing Build-essential and GCC..."
    sudo apt install -y build-essential gcc
    
    # Install Neovim
    echo "Installing Neovim..."
    sudo apt install -y neovim
    
    # Install Python dependencies
    echo "Installing Python3 and pip..."
    sudo apt install -y python3 python3-pip
    pip3 install black flake8
    
    # Install Node.js and npm
    echo "Installing Node.js and npm..."
    sudo apt install -y nodejs npm
    
    # Install C/C++ dependencies
    echo "Installing Clang..."
    sudo apt install -y clang
    
    # Install Shell dependencies
    echo "Installing Shellcheck and shfmt..."
    sudo apt install -y shellcheck
    npm install -g shfmt
    
    # Install additional tools
    echo "Installing additional Node.js tools (prettier, eslint)..."
    npm install -g prettier eslint
else
    echo "Skipping dependency installation."
fi

# Check if packer.nvim is installed, if not - install it
if [ ! -d "${HOME}/.local/share/nvim/site/pack/packer/start/packer.nvim" ]; then
    echo "Installing packer.nvim..."
    git clone --depth 1 https://github.com/wbthomason/packer.nvim \
      "${HOME}/.local/share/nvim/site/pack/packer/start/packer.nvim"
fi

# Run Neovim in headless mode to install and sync plugins
echo "Syncing Neovim plugins..."
nvim --headless +PackerSync +qall

# Run Mason for the user
echo "Opening Mason to manage LSPs, linters, and formatters..."
nvim -c "Mason"

