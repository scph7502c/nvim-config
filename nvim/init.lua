-- General settings for Neovim

-- Display line numbers
vim.opt.number = true

-- Enable automatic indentation based on the previous line
vim.opt.autoindent = true

-- Enable smart indentation for better code structure
vim.opt.smartindent = true

-- Set the number of spaces a <Tab> character represents
vim.opt.tabstop = 4

-- Set the number of spaces to use for each indentation level
vim.opt.shiftwidth = 4

-- Use spaces instead of tabs
vim.opt.expandtab = true

-- Enable syntax highlighting
vim.cmd('syntax on')

-- Map F5 key to save the file, compile with GCC, and run the program
vim.api.nvim_set_keymap('n', '<F5>', ':w<CR>:!gcc % -o %< && ./%<<CR>', { noremap = true, silent = true })

-- Map F6 key to save the file and format it using clang-format
vim.api.nvim_set_keymap('n', '<F6>', ':w<CR>:!clang-format -i %<CR>:e!<CR>', { noremap = true, silent = true })

-- Plugin manager setup using vim-plug (Lua syntax is still compatible here)
vim.cmd [[
  call plug#begin('~/.local/share/nvim/plugged')

  " Emmet plugin for faster HTML and CSS workflow
  Plug 'mattn/emmet-vim'

  " Integration with clang-format for code formatting
  Plug 'rhysd/vim-clang-format'

  " Git integration for using Git commands within Vim
  Plug 'tpope/vim-fugitive'

  " Asynchronous linting engine to provide real-time feedback on code issues
  Plug 'dense-analysis/ale'

  " nvim-cmp and its dependencies for autocompletion
  Plug 'hrsh7th/nvim-cmp'                 " Main completion engine
  Plug 'hrsh7th/cmp-nvim-lsp'             " LSP source for nvim-cmp
  Plug 'hrsh7th/cmp-buffer'               " Buffer completions
  Plug 'hrsh7th/cmp-path'                 " Path completions
  Plug 'hrsh7th/cmp-cmdline'              " Command-line completions
  Plug 'neovim/nvim-lspconfig'            " Collection of LSP configurations
  Plug 'L3MON4D3/LuaSnip'                 " Snippet engine
  Plug 'saadparwaiz1/cmp_luasnip'         " Snippet completions for LuaSnip

  " Plugin for easy text object manipulation (e.g., surrounding words with brackets)
  Plug 'tpope/vim-surround'

  " File explorer to navigate project directories within Vim
  Plug 'preservim/nerdtree'

  " Automatically close brackets, quotes, and other pairs
  Plug 'jiangmiao/auto-pairs'

  call plug#end()
]]

-- Settings for nvim-cmp
local cmp = require'cmp'

cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = {
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),  -- Confirm the selection
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  }, {
    { name = 'buffer' },
  })
})

-- Settings for LSP (Language Server Protocol)
local lspconfig = require'lspconfig'

-- Example configuration for language servers (more servers can be added)
lspconfig.pyright.setup{}  -- Python
lspconfig.ts_ls.setup{} -- TypeScript/JavaScript
lspconfig.clangd.setup{} -- C/C++

-- Specify the Python interpreter for Python 3 plugins
vim.g.python3_host_prog = '~/.venvs/nvim/bin/python'

-- Configure ALE to lint on file save but not on text change
vim.g.ale_lint_on_save = 1
vim.g.ale_lint_on_text_changed = 'never'

-- Disable preview window for completion options
vim.opt.completeopt:remove('preview')

