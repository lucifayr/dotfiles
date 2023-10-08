vim.opt.termguicolors = true

require("notify").setup({
    background_colour = "#000000",
})

local filter_patterns = {
    " fewer lines",
    " line less",
    " lines less",
    " lines yanked",
    " more line",
    "Pattern not found",
    "change; after",
    "change; before",
    "changes; after",
    "changes; before",
    "search hit ",
    "written",
}

local filters = {}

for _, pattern in ipairs(filter_patterns) do
    table.insert(filters, {
        filter = {
            event = "msg_show",
            kind = "",
            find = pattern,
        },
        opts = { skip = true },
    })
end

table.insert(filters,
    {
        view = "notify",
        filter = { event = "msg_showmode" },
    })

require("noice").setup({
    lsp = {
        -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
        override = {
            ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
            ["vim.lsp.util.stylize_markdown"] = true,
            ["cmp.entry.get_documentation"] = true,
        },
    },

    presets = {
        bottom_search = true,         -- use a classic bottom cmdline for search
        command_palette = true,       -- position the cmdline and popupmenu together
        long_message_to_split = true, -- long messages will be sent to a split
        inc_rename = false,           -- enables an input dialog for inc-rename.nvim
        lsp_doc_border = false,       -- add a border to hover docs and signature help
    },

    routes = filters,
})
