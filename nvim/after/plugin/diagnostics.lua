vim.api.nvim_set_keymap('n', '<leader>pe', '<cmd>lua vim.diagnostic.goto_prev()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ne', '<cmd>lua vim.diagnostic.goto_next()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>tes', '<cmd>Telescope diagnostics<CR>', { noremap = true, silent = true })
