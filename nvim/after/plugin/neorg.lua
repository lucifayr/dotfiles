local neorg = require('neorg')
neorg.setup {
    load = {
        ['core.defaults'] = {},
        ['core.syntax'] = {},
        ["core.export"] = {},
        ["core.export.markdown"] = {
            config = {
                extensions = "all",
            }
        },
        ['core.concealer'] = {},
        ['core.dirman'] = {
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

local todo_config = neorg.modules.get_module_config("core.concealer").icons.todo
todo_config.done.icon = ""
todo_config.pending.icon = ""
