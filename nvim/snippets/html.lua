local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt
local rep = require("luasnip.extras").rep

return {
    s({ trig = "<>", dscr = "HTML tag", priority = 150, trigEngine = "pattern" },
        fmt(
            [[
            <[]>
                []
            </[]>
    ]],
            {
                i(1),
                i(2),
                rep(1)
            },
            { delimiters = "[]" }
        )
    )
}
