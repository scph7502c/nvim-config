# Neovim Configuration

This repository contains my custom Neovim configuration, along with all necessary plugins and settings for an optimal development environment.

## Prerequisites

- **Neovim**: Ensure Neovim is installed on your machine. Version 0.5 or higher is recommended.
- **Git**: Required to clone this repository and download plugins.

## Installation

1. **Clone this repository**:

   ```bash
   git clone https://github.com/scph7502c/nvim_config_repo.git
   cd nvim_config_repo
   ```

2. **Run the setup script**:

   ```bash
   ./nvim_setup.sh
   ```

   This script will:
   - Copy the configuration files to `~/.config/nvim`.
   - Install the `packer.nvim` plugin manager (if not already installed).
   - Install and synchronize all plugins defined in the configuration.

3. **Open Neovim**:

   ```bash
   nvim
   ```

   The plugins will be automatically synchronized and configured.

## Key Features

- **Plugin Management**: Uses `packer.nvim` for plugin installation and management.
- **Language Support**: Syntax highlighting and language-specific settings for multiple languages.
- **Custom Shortcuts**: Custom mappings for efficient coding and navigation.
- **Lualine Status Line**: An informative status line showing mode, branch, file type, and more.
- **File Explorer**: NERDTree for file navigation.

## Updating Plugins

To update all plugins, open Neovim and run:

```vim
:PackerSync
```

## Troubleshooting

If you encounter any issues, try the following:

1. **Re-run the setup script**:

   ```bash
   ./nvim_setup.sh
   ```

2. **Manually synchronize plugins**:

   Open Neovim and run:

   ```vim
   :PackerSync
   ```

## Contributing

Feel free to fork this repository, make your own changes, and submit a pull request if you'd like to contribute.
