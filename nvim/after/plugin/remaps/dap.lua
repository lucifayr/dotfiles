local dap = require('dap')
local dapui = require("dapui")


vim.keymap.set('n', '<leader>dr', function() dap.run_to_cursor() end)
vim.keymap.set('n', '<leader>dc', function() dap.continue() end)
vim.keymap.set('n', '<leader>dso', function() dap.step_over() end)
vim.keymap.set('n', '<leader>dsi', function() dap.step_into() end)
vim.keymap.set('n', '<leader>dst', function() dap.step_out() end)
vim.keymap.set('n', '<leader>db', function() dap.toggle_breakpoint() end)
vim.keymap.set('n', '<leader>dlb',
    function() dap.set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end)

vim.keymap.set('n', '<leader>dd', function() dapui.disconnect() end)
vim.keymap.set('n', '<leader>dk', function() dapui.terminate() end)

vim.keymap.set('n', '<leader>dui', function() dapui.toggle() end)
