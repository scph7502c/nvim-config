# Neovim Configuration

This repository contains my custom Neovim configuration, along with all necessary plugins and settings for an optimal development environment.

## Prerequisites

Before proceeding, ensure the following dependencies are available:

1. **Git**: Required to clone this repository and download plugins.
2. **Neovim**: Version 0.8 or higher is required. Install using your system's package manager.
3. **Additional Dependencies** (installed via the setup script):
   - `clang`: For C/C++ language support.
   - `nodejs` and `npm`: Required for JavaScript/TypeScript and other tools.
   - `python3` and `pip`: For Python-based tools like `black` and `flake8`.
   - `shellcheck` and `shfmt`: For linting and formatting shell scripts.
   - `prettier` and `eslint`: For formatting and linting JavaScript/TypeScript code.

If you prefer manual installation, detailed steps are provided below.

## Installation

1. **Clone this repository**:

   ```bash
   git clone https://github.com/scph7502c/nvim_config.git
   cd nvim_config
   ```

2. **Run the setup script**:

   ```bash
   ./nvim_setup.sh
   ```

   The setup script will:
   - Copy the configuration files to `~/.config/nvim`.
   - Install essential dependencies, including `clang`, `nodejs`, `npm`, `python3`, and others.
   - Automatically install and configure the `packer.nvim` plugin manager.
   - Install and synchronize all plugins and language servers.
   - Open the Mason interface (`:Mason`) to manage additional LSPs, linters, and formatters.

3. **Start Neovim**:

   ```bash
   nvim
   ```

   Plugins and configuration will be loaded automatically.

4. **Manage Language Servers, Linters, and Formatters**:

   After installation, you can manage additional tools using Mason. To open Mason, use the command:

   ```vim
   :Mason
   ```

## Key Features

- **Plugin Management**: Uses `packer.nvim` for efficient plugin management.
- **Language Support**: Provides LSP, linting, and formatting support for:
  - Python, JavaScript/TypeScript, HTML, CSS, Bash, C/C++, Lua, YAML, and more.
- **Custom Keybindings**: Optimized shortcuts for coding and navigation.
- **Status Line**: Powered by Lualine, showing mode, branch, file type, and more.
- **File Explorer**: Includes NERDTree for seamless file browsing.

## Dependencies

The setup script installs the following dependencies:

1. **System Tools**:
   - `git`, `curl`, `build-essential`, `gcc`

2. **Neovim**:
   - Version 0.8 or higher.

3. **Programming Tools**:
   - `clang`: For C/C++ development.
   - `nodejs` and `npm`: Required for tools like `prettier`, `eslint`, and `typescript-language-server`.
   - `python3` and `pip`: Required for Python tools (`black`, `flake8`).
   - `shellcheck` and `shfmt`: For shell script linting and formatting.

4. **Language Servers and Tools** (installed via Mason):
   - `lua-language-server`
   - `pyright` (Python)
   - `bash-language-server` (Bash)
   - `typescript-language-server` (JavaScript/TypeScript)
   - `html-lsp` (HTML)
   - `css-lsp` (CSS)
   - `json-lsp` (JSON)
   - `yaml-lsp` (YAML)

## Manual Installation of Dependencies

If you prefer to install dependencies manually:

1. **Install system tools**:

   ```bash
   sudo apt update
   sudo apt install -y git curl build-essential gcc clang nodejs npm python3 python3-pip shellcheck
   npm install -g shfmt prettier eslint
   pip3 install black flake8
   ```

2. **Install language servers**:

   Using npm:

   ```bash
   npm install -g pyright bash-language-server typescript-language-server
   ```

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

3. **Check installed tools**:

   Open Mason to manage language servers, linters, and formatters:

   ```vim
   :Mason
   ```

## Contributing

Feel free to fork this repository, make your changes, and submit a pull request. Contributions are always welcome!
```
