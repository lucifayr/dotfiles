vim.cmd('let g:deepl#endpoint = "https://api-free.deepl.com/v2/translate"')

vim.keymap.set('v', '<leader>tre', '<cmd>call deepl#v("EN")<cr>gqG')
vim.keymap.set('v', '<leader>trg', '<cmd>call deepl#v("DE")<cr>gqG')

vim.keymap.set('n', '<leader>sle', '<cmd>set spelllang=en_us<cr>gqG')
vim.keymap.set('n', '<leader>slg', '<cmd>set spelllang=de<cr>gqG')
