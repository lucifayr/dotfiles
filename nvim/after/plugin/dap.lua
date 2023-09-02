local home = os.getenv("HOME")

local dap = require("dap")
local dapui = require("dapui")

dapui.setup()

-- setup adapters

dap.adapters.codelldb = {
    type = 'server',
    port = '${port}',
    executable = {
        command = home .. '/mason/data/bin/codelldb',
        args = { '--port', '${port}' }
    }
}

-- setup language config

dap.configurations.rust = {
    {
        name = 'Launch Rust debugger',
        type = 'codelldb',
        request = 'launch',
        program = function()
            local pkg_name = vim.fn.trim(vim.fn.system(
                'cat Cargo.toml | grep "name" | awk -F\\" \'{print $2}\' | head -n 1'))
            local default_location = vim.fn.getcwd() .. '/target/debug/' .. pkg_name

            return vim.fn.input('Path to executable: ', default_location)
        end,
        programArgs = function()
            return vim.fn.input('Program arguments: ')
        end,
        cwd = '${workspaceFolder}',
        stopOnEntry = false,
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
