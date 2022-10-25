require('onedark').setup {
  style = "deep",
  colors = {
      red = '#88fcf8',
  },
  highlights = {
    -- < 0.8
    TSKeyword = {fg = '#31eae4', fmt =  'italic' },
    TSKeywordFunction = {fg = '#31eae4', fmt =  'italic' },
    TSKeywordOperator =  {fg = '#31eae4', fmt =  'italic' },
    TSInclude =  {fg = '#31eae4', fmt =  'bold' },
    TSVariable = {fg = '#e3eadc'},
    TSVariableBuiltin = {fg = '#e3eadc', fmt = 'underline'},
    TSComment = {fg = '#4d4d4f'},
    -- > 0.8
    ["@keyword"] = {fg = '#31eae4', fmt =  'italic' },
    ["@keyword.function"] = {fg = '#31eae4', fmt =  'italic' },
    ["@keyword.operator"] =  {fg = '#31eae4', fmt =  'italic' },
    ["@include"] =  {fg = '#31eae4', fmt =  'bold' },
    ["@variable"] = {fg = '#e3eadc'},
    ["@variable.builtin"] = {fg = '#e3eadc', fmt = 'underline'},
    ["@comment"] = {fg = '#4d4d4f'},
  }
}

vim.cmd("colorscheme onedark")
