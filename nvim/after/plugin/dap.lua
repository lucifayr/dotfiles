local home = os.getenv("HOME")

local dap = require("dap")
local dapui = require("dapui")

dapui.setup()

-- setup adapters

dap.adapters.lldb = {
    type = 'executable',
    command = '/usr/bin/lldb-vscode',
    name = 'lldb'
}

-- setup language config

dap.configurations.cpp = {
    {
        name = 'Launch C++ debugger',
        type = 'lldb',
        request = 'launch',
        program = function()
            return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
        cwd = '${workspaceFolder}',
        stopOnEntry = false,
        args = {},
    },
}

dap.configurations.c = dap.configurations.cpp

dap.configurations.rust = {
    {
        name = 'Launch Rust debugger',
        type = 'lldb',
        request = 'launch',
        program = function()
            local pkg_name = vim.fn.trim(vim.fn.system(
                'cat Cargo.toml | grep "name" | awk -F\\" \'{print $2}\''))
            local default_location = vim.fn.getcwd() .. '/target/debug/' .. pkg_name

            return vim.fn.input('Path to executable: ', default_location)
        end,
        programArgs = function()
            return vim.fn.input('Program arguments: ')
        end,
        cwd = '${workspaceFolder}',
        stopOnEntry = false,
        args = {},
        initCommands = function()
            -- Find out where to look for the pretty printer Python module
            local rustc_sysroot = vim.fn.trim(vim.fn.system('rustc --print sysroot'))

            local script_import = 'command script import "' .. rustc_sysroot .. '/lib/rustlib/etc/lldb_lookup.py"'
            local commands_file = rustc_sysroot .. '/lib/rustlib/etc/lldb_commands'

            local commands = {}
            local file = io.open(commands_file, 'r')
            if file then
                for line in file:lines() do
                    table.insert(commands, line)
                end
                file:close()
            end
            table.insert(commands, 1, script_import)

            return commands
        end,
    },
}
-- UI hooks

dap.listeners.after.event_initialized["dapui_config"] = function()
    dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
    dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
    dapui.close()
end
