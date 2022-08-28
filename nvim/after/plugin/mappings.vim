" General
nnoremap J :m+<cr>==
nnoremap K :m-2<cr>==
nnoremap <leader>= <cmd>:vertical resize +5<cr>
nnoremap <leader>- <cmd>:vertical resize -5<cr>
nnoremap <leader><Left> :silent bp<cr>
nnoremap <leader><Right> :silent bn<cr>
nnoremap <leader>pv <cmd>Ex<cr>

" Fugitive 
nnoremap <leader>ga <cmd>:Git add %<cr>
nnoremap <leader>gc <cmd>:Git commit<cr>
nnoremap <leader>gm <cmd>:Git mergetool<cr>
