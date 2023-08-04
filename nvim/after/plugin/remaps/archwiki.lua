local readWiki = require("lucifer.archwiki").readPage

local pickers = require "telescope.pickers"
local finders = require "telescope.finders"
local conf = require("telescope.config").values
local actions = require "telescope.actions"
local action_state = require "telescope.actions.state"

local function selectSimilarPage(pages)
    pickers.new({}, {
        prompt_title = "similar pages",
        finder = finders.new_table {
            results = pages
        },
        sorter = conf.generic_sorter({}),
        attach_mappings = function(prompt_bufnr)
            actions.select_default:replace(function()
                actions.close(prompt_bufnr)
                local selection = action_state.get_selected_entry()
                readWiki(selection[1])
            end)
            return true
        end,

    }):find()
end

function READ_ARCHWIKI_PAGE()
    vim.ui.input({ prompt = "Archwiki page: " }, function(value)
        local err = readWiki(value)
        if (err) then
            if (err == "") then
                print("no pages found")
            else
                selectSimilarPage(err)
            end
        else
            vim.cmd("set nospell")
        end
    end)
end

vim.keymap.set('n', '<leader>aw', '<cmd>lua READ_ARCHWIKI_PAGE()<cr>')
