autocmd BufWritePre * lua vim.lsp.buf.format()
autocmd BufWritePre *{js,ts,jsx,tsx,svelte} Neoformat
