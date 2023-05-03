" WIP
" See :help ins-completion-menu
" and https://stackoverflow.com/questions/2170023/how-to-map-keys-for-popup-menu-in-vim
" for reference

inoremap <expr><C-J> pumvisible() ? "\<C-n>" : "\<C-J>"
inoremap <expr><C-K> pumvisible() ? "\<C-p>" : "\<C-K>"
