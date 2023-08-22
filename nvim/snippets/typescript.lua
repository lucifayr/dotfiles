local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local rep = require("luasnip.extras").rep
local fmt = require("luasnip.extras.fmt").fmt

return {
    s({ trig = "oarg", dscr = "Object argument to a funciton", priority = 100 },
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
    -- TODO: varialbe argument count
    s({ trig = "oargs", dscr = "Object arguments to a funciton", priority = 50 },
        fmt(
            [[
            {[]}: {[]: []}
    ]],
            {
                i(1),
                rep(1),
                i(2)
            },
            { delimiters = "[]" }
        )
    ),
}
