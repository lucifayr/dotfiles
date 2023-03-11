require 'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true
    },
}

local on_attach = function(client)
    -- Mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition)
end
