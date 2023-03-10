require('onedark').setup {
    style = "deep",
    colors = {
        fg = '#d4e0f5',
        red = '#88fcf8',
        blue = '#f5663c',
        yellow = '#f2c757',
        orange = '#f58e4c',
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
