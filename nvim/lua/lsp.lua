-- lsp.lua
local lspconfig = require'lspconfig'

lspconfig.pyright.setup{}      -- Python
lspconfig.ts_ls.setup{}        -- TypeScript/JavaScript
lspconfig.clangd.setup{}       -- C/C++
lspconfig.bashls.setup{}       -- Bash

