vim.keymap.set('n', '<leader>awp', '<cmd>lua require("archwiki.api").select_page_from_local()<cr>')
vim.keymap.set('n', '<leader>awm', '<cmd>lua require("archwiki.api").select_page_from_local("-f markdown")<cr>')
vim.keymap.set('n', '<leader>awh', '<cmd>lua require("archwiki.api").select_page_from_local("-f html")<cr>')
vim.keymap.set('n', '<leader>awu', '<cmd>lua require("archwiki.api").update_category_from_local()<cr>')
