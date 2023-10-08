vim.api.nvim_create_autocmd({ "BufWritePre" }, {
    pattern = {
        "*.rs",
        "*.lua",
        "*.go",
        "*.java",
    },
    callback = function(_event)
        vim.lsp.buf.format()
    end,
})

vim.api.nvim_create_autocmd({ "BufWritePre" }, {
    pattern = {
        "*.svelte",
        "*.jsx",
        "*.tsx",
        "*.js",
        "*.ts",
    },
    callback = function(_event)
        vim.cmd("Neoformat")
    end,
})
