vim.api.nvim_set_keymap('n', '<leader>a', 'za', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>A', '<cmd>:set foldlevel=0<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader><C-a>', '<cmd>:set foldlevel=255<cr>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>pv', ':NERDTreeFind<cr>:wincmd l<cr>:wincmd q<cr>',
    { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>ga', '<cmd>:Git add %<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gc', '<cmd>:Git commit<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gm', '<cmd>:Git mergetool<cr>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>lp', ':StartLatexPreview<cr>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>sc', ':terminal gramma check %<cr>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>W', ':Neorg workspace', { noremap = true, silent = true })

vim.api.nvim_set_keymap('x', '<leader>p', '\"_dP', { noremap = true, silent = true })

vim.api.nvim_set_keymap('v', 'K', ':m \'<-2<cr>gv=gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'J', ':m \'>+1<cr>gv=gv', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', 'U', ':redo<cr>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('x', '<C-d>', '<C-d>zz', { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', '<C-u>', '<C-u>zz', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>tn', '<cmd>:TestNearest<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>tf', '<cmd>:TestFile<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>tl', '<cmd>:TestLast<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ta', '<cmd>:TestSuite<cr>', { noremap = true, silent = true })

vim.keymap.set('n', '<leader>s', [[:%s/\<<C-r><C-w>\>//gI<Left><Left><Left>]])

vim.keymap.set('n', '<leader>ch', ':ChatGPT<cr>')
vim.keymap.set('v', '<leader>ch', '<cmd>:ChatGPTEditWithInstructions<cr>')

vim.keymap.set('n', '<leader>nt', '<cmd>NERDTreeToggle<cr>')
vim.keymap.set('n', '<leader>nf', '<cmd>NERDTreeFind<cr>')


vim.keymap.set('n', '<leader>u', '<cmd>UndotreeToggle<cr>')

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
