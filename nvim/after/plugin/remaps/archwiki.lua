vim.keymap.set('n', '<leader>awp', '<cmd>lua require("archwiki.api").select_page_from_local()<cr><cmd>:set nospell<cr>')
vim.keymap.set('n', '<leader>awm',
    '<cmd>lua require("archwiki.api").select_page_from_local("-f markdown")<cr><cmd>:set nospell<cr>')
vim.keymap.set('n', '<leader>awh',
    '<cmd>lua require("archwiki.api").select_page_from_local("-f html")<cr><cmd>:set nospell<cr>')
vim.keymap.set('n', '<leader>awu', '<cmd>lua require("archwiki.api").update_category_from_local()<cr>')
