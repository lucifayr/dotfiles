let g:deepl#endpoint = "https://api-free.deepl.com/v2/translate"

vnoremap <leader>tre <cmd>call deepl#v("EN", "DE")<cr>gqG
vnoremap <leader>trg <cmd>call deepl#v("DE", "EN")<cr>gqG

nnoremap <leader>sle <cmd>set spelllang=en_us<cr>
nnoremap <leader>slg <cmd>set spelllang=de<cr>
