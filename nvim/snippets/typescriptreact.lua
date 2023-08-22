local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

return {
    s({ trig = "cmp", dscr = "Create a .tsx an exported component", priority = 100 },
        fmt(
            [[
export const [] = () => {
    return <></>
}
    ]],
            { i(1) },
            { delimiters = "[]" }
        )
    ),
    s({ trig = "cmp", dscr = "Create a .tsx component", priority = 50 },
        fmt(
            [[
const [] = () => {
    return <></>
}
    ]],
            { i(1) },
            { delimiters = "[]" }
        )
    ),
}
