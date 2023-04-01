vim.api.nvim_set_keymap('n', '<leader>gui', '<cmd>:GitUi<CR>', { noremap = true, silent = true })

vim.keymap.set('n', '<leader>gd', '<cmd>Gvdiffsplit!<CR>')
vim.keymap.set('n', '<leader>ff', '<cmd>diffget //2<CR>')
vim.keymap.set('n', '<leader>jj', '<cmd>diffget //3<CR>')
