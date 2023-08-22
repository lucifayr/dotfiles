vim.keymap.set('n', '<leader>lr', '<cmd>LspRestart<cr>')
vim.keymap.set('n', '<leader>li', '<cmd>LspInfo<cr>')

vim.cmd [[
" Use Tab to expand and jump through snippets
imap <silent><expr> <cr> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<cr>'
smap <silent><expr> <cr> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<cr>'

" Use Shift-Tab to jump backwards through snippets
imap <silent><expr> <S-cr> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-cr>'
smap <silent><expr> <S-cr> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-cr>'
]]
