vim.api.nvim_set_keymap('n', '<leader>a', 'za', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>A', '<cmd>:set foldlevel=0<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader><C-a>', '<cmd>:set foldlevel=255<cr>', { noremap = true, silent = true })
