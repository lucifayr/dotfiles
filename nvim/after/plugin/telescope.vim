nnoremap <leader>ws <cmd>lua require('telescope.builtin').grep_string()<cr>
nnoremap <leader>ps <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fs <cmd>lua require('telescope.builtin').find_files()<cr>

nnoremap <leader>gc <cmd>lua require('telescope.builtin').git_commits()<cr>
nnoremap <leader>gb <cmd>lua require('telescope.builtin').git_branches()<cr>
nnoremap <leader>gs <cmd>lua require('telescope.builtin').git_status()<cr>	
nnoremap <leader>gwt <cmd>lua require('telescope').extensions.git_worktree.git_worktrees()<cr>
nnoremap <leader>gwc <cmd>lua require('telescope').extensions.git_worktree.create_git_worktree()<cr>

nnoremap <leader>tr <cmd>lua require('telescope.builtin').treesitter()<cr>
