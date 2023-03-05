vim.api.nvim_set_keymap('n', '<leader>pv', ':NERDTreeFind<cr>:wincmd l<cr>:wincmd q<cr>',
    { noremap = true, silent = true })

vim.keymap.set('n', '<leader>nt', '<cmd>NERDTreeToggle<cr>')
vim.keymap.set('n', '<leader>nf', '<cmd>NERDTreeFind<cr>')
