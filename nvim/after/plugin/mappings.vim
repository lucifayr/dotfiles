" General
nnoremap J :m+<cr>==
nnoremap K :m-2<cr>==
nnoremap <leader>= <cmd>:vertical resize +5<cr>
nnoremap <leader>- <cmd>:vertical resize -5<cr>
nnoremap <leader><Left> :silent bp<cr>
nnoremap <leader><Right> :silent bn<cr>
nnoremap <leader>pv <cmd>Ex<cr>

" LSP
nnoremap <leader>fm <cmd>lua vim.lsp.buf.formatting_sync(nil, 1000)<cr>
nnoremap <leader>se <cmd>lua vim.lsp.diagnostic.goto_next{ wrap = true }<cr>
nnoremap <leader>ee <cmd>lua vim.lsp.diagnostic.show_line_diagnostic()<cr>
