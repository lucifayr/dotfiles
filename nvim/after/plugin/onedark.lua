require('onedark').setup {
    style = "deep",
    colors = {
        bg0 = '#121720',
        fg = '#d4e0f5',
        red = '#1a96dd',
        green = '#98c379',
        blue = '#fc0c4c',
        yellow = '#4ee8d3',
        orange = '#fc8c0c',
        purple = '#fc0ca4',
        cyan = '#3582e8',
        black = '#0c0e15',
    },
    highlights = {
        TSKeyword = { fg = '#31eae4', fmt = 'italic' },
        TSKeywordFunction = { fg = '#31eae4', fmt = 'italic' },
        TSKeywordOperator = { fg = '#31eae4', fmt = 'italic' },
        TSInclude = { fg = '#31eae4', fmt = 'bold' },
        TSVariable = { fg = '#e3eadc' },
        TSVariableBuiltin = { fg = '#e3eadc', fmt = 'underline' },
        TSComment = { fg = '#4d4d4f' },
    }
}

vim.g.background = dark
vim.cmd("syntax on")
vim.cmd("colorscheme onedark")
