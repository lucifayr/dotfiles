" General
nnoremap J :m+<cr>==
nnoremap K :m-2<cr>==
nnoremap <leader>= <cmd>:vertical resize +5<cr>
nnoremap <leader>- <cmd>:vertical resize -5<cr>
nnoremap <leader><Left> :silent bp<cr>
nnoremap <leader><Right> :silent bn<cr>
nnoremap <leader>pv :NERDTreeFind<cr>:wincmd l<cr>:wincmd q<cr>
nnoremap <leader>fc  :exec ":normal i start\nend"<cr>:normal Vk<cr>:s/ start/====================================================================================================<cr>:normal Vj<cr>:s/ end/=================================================================================================<cr>:normal Vk<cr>:'<,'>CommentToggle<cr>

" Fugitive 
nnoremap <leader>ga <cmd>:Git add %<cr>
nnoremap <leader>gc <cmd>:Git commit<cr>
noremap <leader>gm <cmd>:Git mergetool<cr>

" LaTex
noremap <leader>lp :StartLatexPreview<cr>
