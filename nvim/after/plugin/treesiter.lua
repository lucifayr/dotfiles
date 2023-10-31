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

    textobjects = {
        select = {
            enable = true,
            lookahead = true,
            keymaps = {
                ["lhs"] = { query = "@assignment.lhs", desc = "Select left hand side of an assignment" },
                ["rhs"] = { query = "@assignment.rhs", desc = "Select right hand side of an assignment" },

                ["oc"] = { query = "@conditional.outer", desc = "Select outer part of a conditional" },
                ["ic"] = { query = "@conditional.inner", desc = "Select inner part of a conditional" },

                ["ol"] = { query = "@loop.outer", desc = "Select outer part of a loop" },
                ["il"] = { query = "@loop.inner", desc = "Select inner part of a loop" },

                ["op"] = { query = "@parameter.outer", desc = "Select outer part of a parameter/argument" },
                ["ip"] = { query = "@parameter.inner", desc = "Select inner part of a parameter/argument" },

                ["of"] = { query = "@function.outer", desc = "Select outer part of a method/function definition" },
                ["if"] = { query = "@function.inner", desc = "Select inner part of a method/function definition" },

                ["ob"] = { query = "@block.outer", desc = "Select outer part of a block" },
                ["ib"] = { query = "@block.inner", desc = "Select inner part of a block" },
            },
        },
    },
}
