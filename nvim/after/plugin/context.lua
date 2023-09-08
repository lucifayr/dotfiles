require 'treesitter-context'.setup {
    enable = true,
    max_lines = 10,
    trim_scope = 'outer',
    patterns = {
        default = {
            'class',
            'function',
            'method',
            'for',
            'while',
            'if',
            'switch',
            'case',
        },
    },
    exact_patterns = {
    },
    zindex = 20,
    mode = 'cursor',
    separator = nil,
}
