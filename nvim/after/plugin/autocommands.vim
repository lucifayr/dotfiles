autocmd BufWritePre * lua vim.lsp.buf.formatting_sync()

" Manage personal notes
autocmd BufWinEnter,BufEnter,BufNewFile $PATH_TO_NOTES/* :silent !cp % %-copy 
autocmd BufWritePost $PATH_TO_NOTES/* !sh $PATH_TO_NOTE_UTILS/update-notes.sh % && cp % %-copy
autocmd BufWinLeave,BufLeave $PATH_TO_NOTES/* :silent !sh $PATH_TO_NOTE_UTILS/clean-notes.sh % 
 
