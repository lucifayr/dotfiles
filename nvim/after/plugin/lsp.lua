local servers = {
    'ansiblels',
    'astro',
    'bashls',
    'cssls',
    'fortls',
    'gopls',
    'html',
    'jdtls',
    'lua_ls',
    'marksman',
    'pyright',
    'rust_analyzer',
    'sqlls',
    'svelte',
    'tailwindcss',
    'texlab',
    'tsserver',
    'yamlls',
}

local home = os.getenv("HOME")
require("mason").setup({
    install_root_dir = home .. "/mason/data",
    pip = {
        upgrade_pip = true,
        install_args = {},
    },
})

require("mason-lspconfig").setup {
    ensure_installed = servers
}

-- Add additional capabilities supported by nvim-cmp
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

local lspconfig = require('lspconfig')

local on_attach = function(_client, bufnr)
    local opts = { buffer = bufnr, remap = false }

    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
end

-- Enable some language servers with the additional completion capabilities offered by nvim-cmp
for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
        on_attach = on_attach,
        capabilities = capabilities,
    }
end

lspconfig['hls'].setup {
    on_attach = on_attach,
    capabilities = capabilities,
}

lspconfig['omnisharp'].setup {
    on_attach = on_attach,
    cmd = {
        'mono',
        '--assembly-loader=strict',
        '/home/lucifer/omnisharp/OmniSharp.exe',
    },
    use_mono = true,
}

local luasnip = require 'luasnip'
local lspkind = require 'lspkind'

-- nvim-cmp setup
local cmp = require 'cmp'
cmp.setup {
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-k>'] = cmp.mapping.scroll_docs(-4),
        ['<C-j>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<CR>'] = cmp.mapping.confirm {
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
        },
    }),
    sources = {
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = 'orgmode' },
    },
    formatting = {
        format = function(entry, vim_item)
            vim_item.kind = lspkind.symbolic(vim_item.kind, { mode = "symbol" })
            local maxwidth = 90

            vim_item.abbr = string.sub(vim_item.abbr, 1, maxwidth)
            return vim_item
        end,
    },
}

require 'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true
    },
}

-- snippets
require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/snippets/" })

-- shared snippets
require("luasnip").filetype_extend("typescriptreact", { "typescript", "html" })
require("luasnip").filetype_extend("svelte", { "typescript" })

-- DB
vim.cmd(
    "autocmd FileType sql,mysql,plsql lua require('cmp').setup.buffer({ sources = {{ name = 'vim-dadbod-completion' }} })")
