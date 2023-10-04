vim.api.nvim_create_autocmd({ "FileType" }, {
    pattern = {
        "rust",
        "lua",
        "go",
    },
    callback = function(_event)
        vim.lsp.buf.format()
    end,
})

vim.api.nvim_create_autocmd({ "FileType" }, {
    pattern = {
        "svelte",
        "jsx",
        "tsx",
        "js",
        "ts",
    },
    callback = function(_event)
        vim.cmd("Neoformat")
    end,
})
