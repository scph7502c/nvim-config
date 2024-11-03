-- plugins.lua
return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'       -- Packer can manage itself
  use 'mattn/emmet-vim'              -- Emmet for HTML/CSS
  use 'rhysd/vim-clang-format'       -- Clang format integration
  use 'tpope/vim-fugitive'           -- Git commands in nvim
  use 'Yggdroot/indentLine'          -- Displays indent lines in code
  use 'luochen1990/rainbow'          -- Colorizes brackets in code for better readability
  use 'dense-analysis/ale'           -- Asynchronous linting engine
  use 'hrsh7th/nvim-cmp'             -- Autocompletion
  use 'hrsh7th/cmp-nvim-lsp'         -- LSP completion source
  use 'hrsh7th/cmp-buffer'           -- Buffer completion source
  use 'hrsh7th/cmp-path'             -- Path completion source
  use 'L3MON4D3/LuaSnip'             -- Snippet engine
  use 'saadparwaiz1/cmp_luasnip'     -- Snippet completion source
  use 'sheerun/vim-polyglot'         -- Syntax for multiple languages
  use 'tpope/vim-surround'           -- Surround text objects
  use 'preservim/nerdtree'           -- File explorer
  use { 'neoclide/coc.nvim', branch = 'release' } -- Coc.nvim for autocompletion
  use 'jiangmiao/auto-pairs'         -- Auto-close brackets/quotes
  use 'lewis6991/gitsigns.nvim'      -- Git integration
  use { 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' } }  -- Fuzzy finder
  use 'hoob3rt/lualine.nvim'         -- Statusline
  use 'neovim/nvim-lspconfig'        -- Facilitates the configuration and integration of LSP language servers

end)

