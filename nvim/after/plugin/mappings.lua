vim.api.nvim_set_keymap('n', '<leader>a', 'za', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>A', '<cmd>:set foldlevel=0<cr>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>pv', ':NERDTreeFind<cr>:wincmd l<cr>:wincmd q<cr>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>ga', '<cmd>:Git add %<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gc', '<cmd>:Git commit<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gm', '<cmd>:Git mergetool<cr>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>lp', ':StartLatexPreview<cr>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>sc', ':terminal gramma check %<cr>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>W', ':Neorg workspace', { noremap = true, silent = true })

vim.api.nvim_set_keymap('x', '<leader>p', '\"_dP', { noremap = true, silent = true })

vim.api.nvim_set_keymap('v', 'K', ':m \'<-2<cr>gv=gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'J', ':m \'>+1<cr>gv=gv', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', 'U', ':redo<cr>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('x', '<C-u>', '<C-u>zz', { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', '<C-d>', '<C-d>zz', { noremap = true, silent = true })

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>//gI<Left><Left><Left>]])
