local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local sn = ls.snippet_node
local d = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt

local function fn(args)
    if (args[1][1] == nil) then
        return sn(nil, {})
    end

    local input_args = args[1][1]

    local nodes = {}
    local idx = 1
    for token in string.gmatch(input_args, "([^,]+)") do
        print(token)
        table.insert(nodes, t(token .. ": "))
        table.insert(nodes, i(idx))
        table.insert(nodes, t(", "))

        idx = idx + 1
    end

    return sn(nil, nodes)
end

return {
    s({ trig = "oarg", dscr = "Object argument to a funciton", priority = 10 },
        fmt(
            [[
            {[]}: []
    ]],
            {
                i(1),
                i(2)
            },
            { delimiters = "[]" }
        )
    ),
    s({ trig = "oargs", dscr = "Object arguments to a funciton", priority = 100 },
        fmt(
            [[
            {[]}: {[]}
    ]],
            {
                i(1),
                d(2, fn, { 1 })
            },
            { delimiters = "[]" }
        )
    ),
}
