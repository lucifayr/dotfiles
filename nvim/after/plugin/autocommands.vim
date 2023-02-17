autocmd BufWritePre * lua vim.lsp.buf.format()

" Run Prettier in .js and .ts
autocmd BufWritePre *.{js,ts,jsx,tsx,md,svelte} Neoformat
