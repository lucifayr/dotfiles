vim.api.nvim_set_keymap('n', '<leader>ga', '<cmd>:Git add %<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gc', '<cmd>:Git commit<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gm', '<cmd>:Git mergetool<cr>', { noremap = true, silent = true })
