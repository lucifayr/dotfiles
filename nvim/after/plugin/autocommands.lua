vim.api.nvim_create_autocmd({ "BufWritePre" }, {
    pattern = {
        "*.rs",
        "*.lua",
        "*.go",
        "*.svelte",
        "*.java",
    },
    callback = function(_event)
        vim.lsp.buf.format()
    end,
})

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
augroup("__formatter__", { clear = true })
autocmd("BufWritePost", {
    group = "__formatter__",
    command = ":FormatWrite",
})
