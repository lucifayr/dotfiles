require 'true-zen'.setup({
    modes = { -- configurations per mode
        ataraxis = {
            shade = "dark",
            minimum_writing_area = {
                width = 70,
                height = 44,
            },
            quit_untoggles = true, -- type :q or :qa to quit Ataraxis mode
            padding = {
                left = 52,
                right = 52,
                top = 12,
                bottom = 12,
            },
        },
        minimalist = {
            ignored_buf_types = { "nofile" },
            options = {
                number = false,
                relativenumber = false,
                showtabline = 0,
                signcolumn = "no",
                statusline = "",
                cmdheight = 1,
                laststatus = 0,
                showcmd = false,
                showmode = false,
                ruler = false,
                numberwidth = 1
            },
        },
    },
    integrations = {
        tmux = true, -- hide tmux status bar in (minimalist, ataraxis)
        lualine = true -- hide nvim-lualine (ataraxis)
    },
})
