local cmp = require('cmp')
local luasnip = require('luasnip')

-- Ładowanie snippetów z friendly-snippets
require('luasnip.loaders.from_vscode').lazy_load()

cmp.setup({
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = {
    ['<Down>'] = cmp.mapping.select_next_item(), -- Strzałka w dół
    ['<Up>'] = cmp.mapping.select_prev_item(),   -- Strzałka w górę
    ['<C-n>'] = cmp.mapping.select_next_item(),  -- Alternatywa: Ctrl-n
    ['<C-p>'] = cmp.mapping.select_prev_item(),  -- Alternatywa: Ctrl-p
    ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end, { 'i', 's' }),
    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { 'i', 's' }),
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Zatwierdzenie podpowiedzi Enterem
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
    { name = 'buffer' },
    { name = 'path' },
  }),
})

