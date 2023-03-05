vim.keymap.set('n', '<leader>ja', '<cmd>lua require("harpoon.mark").add_file()<cr>')
vim.keymap.set('n', '<leader>js', '<cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>')
vim.keymap.set('n', '<leader>jk', '<cmd>lua require("harpoon.ui").nav_next()<cr>')
vim.keymap.set('n', '<leader>jj', '<cmd>lua require("harpoon.ui").nav_prev()<cr>')
