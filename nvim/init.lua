-- init.lua
vim.cmd [[packadd packer.nvim]]
vim.cmd [[colorscheme catppuccin-mocha]]
--colorscheme catppuccin " catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
require('plugins')
require('settings')
require('keymaps')
require('lsp')
require('autocomplete')

-- Gitsigns
require('gitsigns').setup()

-- Telescope
require('telescope').setup{}

require('lualine').setup {
  options = {
    theme = 'auto',
    icons_enabled = false,  -- Wyłącza dodatkowe ikony
    component_separators = '',
    section_separators = '',
  },
  sections = {
    lualine_a = {'mode'},                       -- Tryb edytora (np. INSERT)
    lualine_b = {'branch'},                     -- Gałąź Git
    lualine_c = {'filename'},                   -- Nazwa pliku
    lualine_x = {'encoding', 'filetype'},       -- Kodowanie i typ pliku
    lualine_y = {'progress'},                   -- Procentowy postęp w pliku
    lualine_z = {'location'}                    -- Linia i kolumna kursora
  }
}

