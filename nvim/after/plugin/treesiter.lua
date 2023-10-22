require('orgmode').setup_ts_grammar()
require 'nvim-treesitter.configs'.setup {
    ensure_installed = { 'c', 'lua', 'rust', 'go', 'org', 'typescript', 'javascript', 'svelte' },
    sync_install = false,
    auto_install = true,
    ignore_install = { 'javascript' },
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = { 'org' },
    },
}
