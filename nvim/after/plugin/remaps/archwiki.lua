local function open_page_as_man(page)
    vim.cmd("!tmux neww ~/projects/dotfiles/custom/archwiki-man '" .. page .. "'")
end

vim.keymap.set('n', '<leader>aw', function()
    local page = require("archwiki.api").select_page_from_local(nil, nil, open_page_as_man)
end)
