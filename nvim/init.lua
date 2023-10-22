-- Leader
vim.g.mapleader = ' '
vim.g.maplocalleader = ';'

-- Prettier
vim.g.neoformat_try_node_exe = 1

-- GitLense
vim.g.blamer_enabled = 1
vim.g.blamer_delay = 500
vim.g.blamer_show_in_insert_modes = 0
vim.g.blamer_prefix = ' ^*^ '
vim.g.blamer_show_in_visual_modes = 0
vim.g.blamer_date_format = '%H:%M on the %d of %B, %Y'
vim.g.blamer_template = '<committer> <summary> at <committer-time> '

-- LaTex
vim.g.latex_preview_clean = 1

local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

require('lucifer')

return require('packer').startup(function(use)
    use {
        'Jackboxx/archwiki-nvim',
        requires = { 'nvim-telescope/telescope.nvim' }
    }
    use {
        'windwp/nvim-autopairs',
        config = function() require('nvim-autopairs').setup {} end
    }
    use 'nvim-treesitter/nvim-treesitter'
    use {
        'brenoprata10/nvim-highlight-colors',
        config = function()
            require('nvim-highlight-colors').setup {}
        end,
    }
    use {
        'williamboman/mason.nvim',
        'neovim/nvim-lspconfig',
        'williamboman/mason-lspconfig.nvim',
        run = ':MasonUpdate'
    }
    use { 'tzachar/cmp-tabnine', run = './install.sh', requires = 'hrsh7th/nvim-cmp' }
    use({
        "ray-x/sad.nvim",
        requires = { "ray-x/guihua.lua", run = "cd lua/fzy && make" },
        config = function()
            require("sad").setup {}
        end,
    })
    use 'brneor/gitui.nvim'
    use 'ThePrimeagen/harpoon'
    use 'vim-test/vim-test'
    use 'wbthomason/packer.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'onsails/lspkind.nvim'
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    use {
        'nvim-telescope/telescope.nvim',
        config = function()
            require 'telescope'.setup {
                defaults = {
                    mappings = {
                        i = {
                            ["<C-K>"] = require('telescope.actions').move_selection_previous,
                            ["<C-J>"] = require('telescope.actions').move_selection_next,
                            ["<C-P>"] = require('telescope.actions').preview_scrolling_up,
                            ["<C-N>"] = require('telescope.actions').preview_scrolling_down,
                        }
                    }
                }
            }
        end
    }
    use {
        'stevearc/oil.nvim',
        config = function()
            require('oil').setup({
                view_options = {
                    show_hidden = true,
                },
            })
        end
    }
    use 'tpope/vim-fugitive'
    use 'mbbill/undotree'
    use 'mfussenegger/nvim-jdtls'
    use 'tpope/vim-surround'
    use 'APZelos/blamer.nvim'
    use 'rhysd/conflict-marker.vim'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'terrortylor/nvim-comment'
    use 'nvim-tree/nvim-web-devicons'
    use 'nvim-lualine/lualine.nvim'
    use 'sbdchd/neoformat'
    use 'nvim-treesitter/nvim-treesitter-context'
    use 'navarasu/onedark.nvim'

    -- DB
    use 'tpope/vim-dadbod'
    use 'kristijanhusak/vim-dadbod-ui'
    use 'kristijanhusak/vim-dadbod-completion'

    -- Debugger
    use 'mfussenegger/nvim-dap'
    use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } }

    -- Plugin Development
    use { 'folke/neodev.nvim', config = function()
        require("neodev").setup({
            library = { plugins = { "nvim-dap-ui" }, types = true },
        })
    end }

    -- Notifications
    use {
        'folke/noice.nvim',
        requires = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify"
        },
    }

    -- Org
    use { 'nvim-orgmode/orgmode', config = function()
        require('orgmode').setup({
            org_agenda_files = {
                '~/projects/notes/todos/*',
            },
            org_default_notes_file = '~/projects/notes/refile.org'
        })
    end
    }

    if packer_bootstrap then
        require('packer').sync()
    end
end)
