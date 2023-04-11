Angles = {}

local selection = require("lucifer.selection")

function Angles.radiansToDegrees()
    local s = selection.getSelection()
    local x = tonumber(s)

    if (type(x) ~= "number") then
        print('Selection is not a number')
        return
    end

    local out = x * (180 / math.pi)
    vim.fn.setreg('v', string.format(out))
    vim.cmd('normal! "vp"')
end

function Angles.degreesToRadians()
    local s = selection.getSelection()
    local x = tonumber(s)

    if (type(x) ~= "number") then
        print('Selection is not a number')
        return
    end

    local out = x * (math.pi / 180)
    vim.fn.setreg('v', string.format(out))
    vim.cmd('normal! "vp"')
end

return Angles
