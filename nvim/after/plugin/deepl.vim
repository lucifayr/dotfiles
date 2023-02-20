let g:deepl#endpoint = "https://api-free.deepl.com/v2/translate"

vmap <leader>te <cmd>call deepl#v("DE", "EN")<cr>gqG
vmap <leader>tg <cmd>call deepl#v("EN", "DE")<cr>gqG
