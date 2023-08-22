vim.keymap.set('n', '<leader>lr', '<cmd>LspRestart<cr>')
vim.keymap.set('n', '<leader>li', '<cmd>LspInfo<cr>')

vim.cmd [[
" Use Tab to expand and jump through snippets
imap <silent><expr> <TAB> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<TAB>'
smap <silent><expr> <TAB> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<TAB>'

" Use Shift-Tab to jump backwards through snippets
imap <silent><expr> <S-TAB> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-TAB>'
smap <silent><expr> <S-TAB> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-TAB>'
]]
