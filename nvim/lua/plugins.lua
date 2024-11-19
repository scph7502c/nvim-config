return require('packer').startup(function(use)
  -- Motywy kolorystyczne
  use 'folke/tokyonight.nvim'             -- Motyw Tokyo Night
  use { "catppuccin/nvim", as = "catppuccin" } -- Motyw Catppuccin
  use 'EdenEast/nightfox.nvim'            -- Motyw Nightfox

  -- Zarządzanie wtyczkami
  use 'wbthomason/packer.nvim'            -- Samo zarządzanie wtyczkami przez Packer

  -- HTML/CSS/JS
  use 'mattn/emmet-vim'                   -- Emmet do szybkiego pisania HTML/CSS
  -- C/C++
  use 'rhysd/vim-clang-format'            -- Automatyczne formatowanie C/C++
  use 'rafamadriz/friendly-snippets' -- Predefiniowane snippety
    
  -- Git integracja
  use 'tpope/vim-fugitive'                -- Polecenia Git w Neovim
  use 'lewis6991/gitsigns.nvim'           -- Ikony zmian Git w lewym marginesie

  -- LSP UI i narzędzia
  use { 'glepnir/lspsaga.nvim', branch = 'main' } -- UI dla LSP (nawigacja, diagnostyka, podpowiedzi)
  use 'jose-elias-alvarez/null-ls.nvim'   -- Integracja linterów i formaterów z LSP

  -- Debugowanie
  use 'mfussenegger/nvim-dap'             -- Główna wtyczka do debugowania
  use { 'rcarriga/nvim-dap-ui', requires = { 'mfussenegger/nvim-dap' } } -- UI dla debugowania

  -- Dodatki wizualne
  use 'luochen1990/rainbow'               -- Kolorowanie nawiasów
  use 'Yggdroot/indentLine'               -- Wizualizacja wcięć w kodzie
  use 'hoob3rt/lualine.nvim'              -- Pasek statusu (statusline)
  
  -- Wspomaganie kodowania
  use 'dense-analysis/ale'                -- Asynchroniczne lintowanie
  use 'jiangmiao/auto-pairs'              -- Automatyczne zamykanie nawiasów/cytatów
  use 'sheerun/vim-polyglot'              -- Obsługa składni wielu języków
  use 'tpope/vim-surround'                -- Obsługa otaczania obiektów tekstowych

  -- Eksploracja plików
  use 'preservim/nerdtree'                -- Eksplorator plików

  -- Autouzupełnianie i snippety
  use 'hrsh7th/nvim-cmp'                  -- Autouzupełnianie
  use 'hrsh7th/cmp-nvim-lsp'              -- Źródło uzupełnień z LSP
  use 'hrsh7th/cmp-buffer'                -- Źródło uzupełnień z bieżącego bufora
  use 'hrsh7th/cmp-path'                  -- Źródło uzupełnień ścieżek
  use 'L3MON4D3/LuaSnip'                  -- Silnik snippetów
  use 'saadparwaiz1/cmp_luasnip'          -- Integracja snippetów z autouzupełnianiem

  -- Wyszukiwanie i nawigacja
  use { 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' } } -- Fuzzy Finder (szybkie wyszukiwanie plików)

  -- LSP (Language Server Protocol)
  use 'neovim/nvim-lspconfig'             -- Kolekcja konfiguracji LSP
  use { 'williamboman/mason.nvim' }                -- Mason do zarządzania LSP i narzędziami
  use { 'williamboman/mason-lspconfig.nvim' }      -- Integracja Mason z LSP
  use { 'jay-babu/mason-null-ls.nvim' }            -- Integracja Mason z null-ls
  use { 'jay-babu/mason-nvim-dap.nvim' }           -- Integracja Mason z nvim-dap

  use { 'nvim-neotest/nvim-nio' }
  


end)

