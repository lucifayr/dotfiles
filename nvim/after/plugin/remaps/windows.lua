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

-- close all
function close_non_active_windows()
    local current_win = vim.api.nvim_get_current_win()
    local wins_in_tab = vim.api.nvim_tabpage_list_wins(0)

    for _, handle in pairs(wins_in_tab) do
        if handle ~= current_win then
            vim.api.nvim_win_close(handle, false)
        end
    end
end

vim.keymap.set("n", "<leader>wk", "<cmd>lua close_non_active_windows()<cr>")
