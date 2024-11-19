-- Klawisze dla debugowania
vim.keymap.set('n', '<F5>', require('dap').continue, { desc = "Debug: Start/Continue" })
vim.keymap.set('n', '<F10>', require('dap').step_over, { desc = "Debug: Step Over" })
vim.keymap.set('n', '<F11>', require('dap').step_into, { desc = "Debug: Step Into" })
vim.keymap.set('n', '<F12>', require('dap').step_out, { desc = "Debug: Step Out" })
vim.keymap.set('n', '<Leader>b', require('dap').toggle_breakpoint, { desc = "Debug: Toggle Breakpoint" })
vim.keymap.set('n', '<Leader>dr', require('dap').repl.open, { desc = "Debug: Open REPL" })
vim.keymap.set('n', '<Leader>du', require('dapui').toggle, { desc = "Debug: Toggle UI" })

-- Klawisze dla LSP
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = "Go to Definition" })
vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = "Hover Documentation" })
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { desc = "Go to Implementation" })
vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, { desc = "Signature Help" })

