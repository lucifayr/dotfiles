vim.api.nvim_set_keymap('x', '<leader>p', '\"_dP', { noremap = true, silent = true })

vim.api.nvim_set_keymap('v', 'K', ':m \'<-2<cr>gv=gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'J', ':m \'>+1<cr>gv=gv', { noremap = true, silent = true })

vim.api.nvim_set_keymap('x', '<C-d>', '<C-d>zz', { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', '<C-u>', '<C-u>zz', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', 'U', ':redo<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>s', [[:%s/\<<C-r><C-w>\>//gI<Left><Left><Left>]])

vim.keymap.set('v', '<leader>rtd', '<cmd>lua require("jackboxx.angles").radiansToDegrees()<cr>')
vim.keymap.set('v', '<leader>dtr', '<cmd>lua require("jackboxx.angles").degreesToRadians()<cr>')
