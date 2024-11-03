-- init.lua
vim.cmd [[packadd packer.nvim]]
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
    icons_enabled = false,
    component_separators = '',
    section_separators = '',
  },
  sections = {
    lualine_a = {'mode'},                       
    lualine_b = {'branch'},                     
    lualine_c = {'filename'},                   
    lualine_x = {'encoding', 'filetype'},       
    lualine_y = {'progress'},                   
    lualine_z = {'location'} 
  }
}

