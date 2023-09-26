local opt          = vim.opt
local home         = os.getenv("HOME")

opt.exrc           = true
opt.number         = true
opt.relativenumber = true
opt.tabstop        = 4
opt.softtabstop    = 4
opt.shiftwidth     = 4
opt.expandtab      = true
opt.smartindent    = true
opt.hidden         = true
opt.undofile       = true
opt.undodir        = home .. '/.vim/undodir'
opt.termguicolors  = true
opt.incsearch      = true
opt.scrolloff      = 15
opt.signcolumn     = 'yes'
opt.colorcolumn    = '90'
opt.textwidth      = 90
opt.encoding       = 'UTF-8'
opt.updatetime     = 50
opt.spell          = true
opt.spelllang      = 'en_us'
opt.hlsearch       = false
opt.errorbells     = false
opt.wrap           = false
opt.list           = false
opt.linebreak      = true
opt.guicursor      = ""
opt.breakat        = '\\'
opt.swapfile       = false
opt.showmode       = false
opt.clipboard:append('unnamedplus')
opt.cursorline = true
opt.splitright = true
opt.splitbelow = true
opt.iskeyword:append('-')
