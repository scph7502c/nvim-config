local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Włącz wsparcie dla snippetów
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- Lista serwerów LSP
local servers = {
  'pyright',        -- Python
  'ts_ls',          -- TypeScript/JavaScript
  'clangd',         -- C/C++
  'bashls',         -- Bash
  'html',           -- HTML
  'cssls',          -- CSS
  'jsonls',         -- JSON
  'yamlls',         -- YAML
  'lua_ls',         -- Lua
}

-- Konfiguracja każdego serwera
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    capabilities = capabilities,
  }
end

-- Specjalna konfiguracja dla Lua Language Server
lspconfig.lua_ls.setup({
  on_init = function(client)
    -- Jeśli nie ma `.luarc.json`, ustaw domyślne konfiguracje
    if client.workspace_folders then
      local path = client.workspace_folders[1].name
      if vim.uv.fs_stat(path .. '/.luarc.json') or vim.uv.fs_stat(path .. '/.luarc.jsonc') then
        return
      end
    end

    client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
      runtime = {
        version = 'LuaJIT', -- Ustaw LuaJIT dla Neovim
      },
      diagnostics = {
        globals = { 'vim' }, -- Nie oznaczaj `vim` jako niezdefiniowane
      },
      workspace = {
        checkThirdParty = false, -- Wyłącz ostrzeżenia o zewnętrznych narzędziach
        library = {
          vim.env.VIMRUNTIME, -- Ścieżka runtime Neovim
        },
      },
      telemetry = {
        enable = false, -- Wyłącz telemetrię
      },
    })
  end,
  settings = {
    Lua = {},
  },
})

-- Emmet jako LSP
lspconfig.emmet_ls.setup({
  capabilities = capabilities,
  filetypes = { 'html', 'css', 'javascript', 'typescriptreact', 'javascriptreact', 'vue' },
  init_options = {
    html = {
      options = {
        ["bem.enabled"] = true, -- Opcjonalne: Włącz BEM
      },
    },
  },
})

-- Mason konfiguracja
require('mason').setup()

require('mason-lspconfig').setup({
  ensure_installed = {
    'pyright',         -- Python
    'ts_ls',           -- TypeScript/JavaScript
    'clangd',          -- C/C++
    'bashls',          -- Bash
    'html',            -- HTML
    'cssls',           -- CSS
    'jsonls',          -- JSON
    'yamlls',          -- YAML
    'lua_ls',          -- Lua
  },
})

require('mason-null-ls').setup({
  ensure_installed = {
    'prettier',        -- HTML, CSS, JS, JSON
    'stylua',          -- Lua
    'black',           -- Python
    'flake8',          -- Python linting
    'shfmt',           -- Shell
    'shellcheck',      -- Shell linting
    'eslint',          -- JavaScript/TypeScript
  },
  automatic_installation = true,
})

require('mason-nvim-dap').setup({
  ensure_installed = { 'python' },
  automatic_installation = true,
})

