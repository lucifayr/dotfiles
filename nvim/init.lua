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

vim.g.highlightedyank_highlight_duration = 100
vim.g.highlightedyank_highlight_in_visual = 0

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
    -- Other
    use 'nvim-lua/plenary.nvim'

    -- Dependency Management
    use 'wbthomason/packer.nvim'
    use {
        'williamboman/mason.nvim',
        'neovim/nvim-lspconfig',
        'williamboman/mason-lspconfig.nvim',
        run = ':MasonUpdate'
    }

    -- Git
    use 'tpope/vim-fugitive'
    use 'APZelos/blamer.nvim'

    -- Editing
    use 'mbbill/undotree'

    use({
        "ray-x/sad.nvim",
        requires = { "ray-x/guihua.lua", run = "cd lua/fzy && make" },
        config = function()
            require("sad").setup {}
        end,
    })

    -- File Navigation
    use 'ThePrimeagen/harpoon'

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

    -- Style
    use 'navarasu/onedark.nvim'
    use 'nvim-lualine/lualine.nvim'
    use 'nvim-tree/nvim-web-devicons'

    use {
        'brenoprata10/nvim-highlight-colors',
        config = function()
            require('nvim-highlight-colors').setup {}
        end,
    }

    -- Coding
    use 'nvim-treesitter/nvim-treesitter'
    use 'nvim-treesitter/nvim-treesitter-context'
    use "nvim-treesitter/nvim-treesitter-textobjects"
    use 'tpope/vim-surround'
    use 'onsails/lspkind.nvim'
    use 'saadparwaiz1/cmp_luasnip'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'sbdchd/neoformat'
    use 'vim-test/vim-test'
    use 'L3MON4D3/LuaSnip'
    use 'mfussenegger/nvim-jdtls'
    use 'machakann/vim-highlightedyank'

    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    use {
        'windwp/nvim-autopairs',
        config = function() require('nvim-autopairs').setup {} end
    }

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
            org_todo_keywords = { 'TODO', '|', 'DONE', 'CANCELED' },
            org_default_notes_file = '~/projects/notes/refile.org'
        })
    end
    }

    -- ArchWiki
    use {
        'Jackboxx/archwiki-nvim',
        requires = { 'nvim-telescope/telescope.nvim' }
    }

    if packer_bootstrap then
        require('packer').sync()
    end
end)
