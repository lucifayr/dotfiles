require'lspconfig'.pyright.setup{}

require'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true
    },
  }
local on_attach = function(client, bufnr)
  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
end
