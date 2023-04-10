Selection = {}

function Selection.getSelection()
    vim.cmd('noau normal! "vygv"')
    return vim.fn.getreg('v')
end

return Selection
