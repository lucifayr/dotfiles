-- resize
vim.keymap.set("n", "<C-S-L>", "<cmd>:vertical resize +5<cr>")
vim.keymap.set("n", "<C-S-H>", "<cmd>:vertical resize -5<cr>")
vim.keymap.set("n", "<C-S-K>", "<cmd>:resize +5<cr>")
vim.keymap.set("n", "<C-S-J>", "<cmd>:resize -5<cr>")

-- move
vim.keymap.set("n", "<C-H>", "<C-W>h")
vim.keymap.set("n", "<C-J>", "<C-W>j")
vim.keymap.set("n", "<C-K>", "<C-W>k")
vim.keymap.set("n", "<C-L>", "<C-W>l")
