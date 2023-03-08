Angles = {}

local selection = require("jackboxx.selection")

local PHI = 3.1415926535897

function Angles.radiansToDegrees()
    print(selection.getSelection())
    local x = 10
    local out = x * (180 / PHI)
    print(out)
end

function Angles.degreesToRadians()
    print(selection.getSelection())
    local x = 10
    local out = x * (PHI / 180)
    print(out)
end

return Angles
