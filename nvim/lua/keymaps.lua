-- keymaps.lua
vim.api.nvim_set_keymap('n', '<F5>', ':w<CR>:!gcc % -o %< && ./%<<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<F6>', ':w<CR>:!clang-format -i %<CR>:e!<CR>', { noremap = true, silent = true })

