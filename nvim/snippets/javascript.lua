local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

return {
    s({ trig = "docs", dscr = "documentation comment", priority = 50 },
        fmt(
            [[
/**
 * []
 */
    ]],
            {
                i(1),
            },
            { delimiters = "[]" }
        )
    ),
    s({ trig = "jsdocs", dscr = "jsdocs comment", priority = 50 },
        fmt(
            [[
/**
 * []
 * @param []
 * @return []
 */
    ]],
            {
                i(1),
                i(2),
                i(3),
            },
            { delimiters = "[]" }
        )
    ),
}
