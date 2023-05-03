vim.keymap.set('n', '<leader>ws', '<cmd>lua require("telescope.builtin").grep_string({hidden = true})<cr>')
vim.keymap.set('n', '<leader>ls', '<cmd>lua require("telescope.builtin").live_grep({hidden = true})<cr>')
vim.keymap.set('n', '<leader>fs', '<cmd>lua require("telescope.builtin").find_files({hidden = true})<cr>')
vim.keymap.set('n', '<leader>gs', '<cmd>lua require("telescope.builtin").git_files({hidden = true})<cr>')

vim.keymap.set('n', '<leader>sgc', '<cmd>lua require("telescope.builtin").git_commits()<cr>')
vim.keymap.set('n', '<leader>sgb', '<cmd>lua require("telescope.builtin").git_branches()<cr>')
vim.keymap.set('n', '<leader>sgs', '<cmd>lua require("telescope.builtin").git_status()<cr>	')
vim.keymap.set('n', '<leader>gwt', '<cmd>lua require("telescope").extensions.git_worktree.git_worktrees()<cr>')
vim.keymap.set('n', '<leader>gwc', '<cmd>lua require("telescope").extensions.git_worktree.create_git_worktree()<cr>')

vim.keymap.set('n', '<leader>tr', '<cmd>lua require("telescope.builtin").treesitter()<cr>')
vim.keymap.set('n', '<leader>ss', '<cmd>lua require("telescope.builtin").spell_suggest()<cr>')
