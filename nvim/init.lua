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

-- NerdTree
vim.g.NERDTreeQuitOnOpen = 1
vim.g.NERDTreeShowHidden = 1
vim.g.NERDTreeMapJumpNextSibling = '\\j'
vim.g.NERDTreeMapJumpPrevSibling = '\\k'

-- LaTex
vim.g.latex_preview_clean = 1

-- Instant
vim.g.instant_username = 'jackboxx'

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

require('jackboxx')

return require('packer').startup(function(use)
    use {
        'glepnir/dashboard-nvim',
        event = 'VimEnter',
        config = function()
            require('dashboard').setup({
                theme = 'hyper',
                config = {
                    header = {
                        '███╗   ██╗ ██████╗     ███╗   ███╗ █████╗ ██╗██████╗ ███████╗███╗   ██╗███████╗',
                        '████╗  ██║██╔═══██╗    ████╗ ████║██╔══██╗██║██╔══██╗██╔════╝████╗  ██║██╔════╝',
                        '██╔██╗ ██║██║   ██║    ██╔████╔██║███████║██║██║  ██║█████╗  ██╔██╗ ██║███████╗',
                        '██║╚██╗██║██║   ██║    ██║╚██╔╝██║██╔══██║██║██║  ██║██╔══╝  ██║╚██╗██║╚════██║',
                        '██║ ╚████║╚██████╔╝    ██║ ╚═╝ ██║██║  ██║██║██████╔╝███████╗██║ ╚████║███████║',
                        '╚═╝  ╚═══╝ ╚═════╝     ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝╚═════╝ ╚══════╝╚═╝  ╚═══╝╚══════╝',
                    },
                    footer = {},
                    shortcut = {
                        {
                            icon = ' ',
                            icon_hl = '@variable',
                            desc = 'Find Files',
                            group = 'Label',
                            action = 'Telescope find_files',
                            key = 'f',
                        },
                    },
                },
            })
        end,
        requires = { 'nvim-tree/nvim-web-devicons' }
    }
    use {
        'nvim-neorg/neorg',
        config = function()
            require('neorg').setup {
                load = {
                        ['core.defaults'] = {},
                        ['core.syntax'] = {},
                        ["core.presenter"] = {
                        config = {
                            zen_mode = "truezen",
                        },
                    },
                        ["core.integrations.truezen"] = {},
                        ["core.export"] = {},
                        ["core.export.markdown"] = {
                        config = {
                            extensions = "all",
                        }
                    },
                        ['core.norg.concealer'] = {},
                        ['core.norg.dirman'] = {
                        config = {
                            workspaces = {
                                drinkUp = '~/notes/drink-up',
                                norgToMarkdown = '~/notes/norg-to-markdown',
                                vocal = '~/notes/vocal',
                                school = '~/notes/school',
                                personal = '~/notes/personal',
                                timetac = '~/notes/timetac',
                                progressed = '~/notes/progressed',
                            },
                            index = "index.norg",
                        },
                    },
                },
            }
        end,
        run = ':Neorg sync-parsers',
        requires = 'nvim-lua/plenary.nvim',
    }
    use {
        'windwp/nvim-autopairs',
        config = function() require('nvim-autopairs').setup {} end
    }
    use {
        'nvim-treesitter/nvim-treesitter',
        config = function()
            require 'nvim-treesitter.configs'.setup {
                ensure_installed = { 'c', 'lua', 'rust', 'go', 'typescript', 'javascript', 'svelte' },
                sync_install = false,
                auto_install = true,
                ignore_install = { 'javascript' },
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false,
                },
            }
        end
    }
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
    }
    use({
        "jackMort/ChatGPT.nvim",
        requires = {
            "MunifTanjim/nui.nvim",
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope.nvim"
        }
    })
    use { 'tzachar/cmp-tabnine', run = './install.sh', requires = 'hrsh7th/nvim-cmp' }
    use { 'jbyuki/instant.nvim' }
    use({
        "ray-x/sad.nvim",
        requires = { "ray-x/guihua.lua", run = "cd lua/fzy && make" },
        config = function()
            require("sad").setup {}
        end,
    })
    use { 'uga-rosa/ccc.nvim', config = function() require "ccc".setup() end }
    use {
        "folke/twilight.nvim",
        config = function()
            require("twilight").setup {}
        end
    }
    use {
        "akinsho/toggleterm.nvim",
        tag = '*',
    }
    use 'Pocco81/true-zen.nvim'
    use 'brneor/gitui.nvim'
    use 'ryicoh/deepl.vim'
    use 'ThePrimeagen/harpoon'
    use 'vim-test/vim-test'
    use 'wbthomason/packer.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'onsails/lspkind.nvim'
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    use 'nvim-telescope/telescope.nvim'
    use 'tpope/vim-fugitive'
    use 'mbbill/undotree'
    use 'mfussenegger/nvim-jdtls'
    use 'tpope/vim-surround'
    use 'APZelos/blamer.nvim'
    use 'preservim/nerdtree'
    use 'Xuyuanp/nerdtree-git-plugin'
    use 'ryanoasis/vim-devicons'
    use 'ThePrimeagen/git-worktree.nvim'
    use 'rhysd/conflict-marker.vim'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'terrortylor/nvim-comment'
    use 'nvim-tree/nvim-web-devicons'
    use 'evanleck/vim-svelte'
    use 'pangloss/vim-javascript'
    use 'HerringtonDarkholme/yats.vim'
    use 'nvim-lualine/lualine.nvim'
    use 'sbdchd/neoformat'
    use 'nvim-treesitter/nvim-treesitter-context'
    use 'navarasu/onedark.nvim'
    use {
        "savq/paq-nvim",
        "frabjous/knap",
    }

    if packer_bootstrap then
        require('packer').sync()
    end
end)
