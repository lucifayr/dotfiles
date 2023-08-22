local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

return {
    s({ trig = "fn", dscr = "Rust function", priority = 50 },
        fmt(
            [[
            fn []([]) {}
    ]],
            {
                i(1),
                i(2)
            },
            { delimiters = "[]" }
        )
    ),
    s({ trig = "fnr", dscr = "Rust function with return", priority = 100 },
        fmt(
            [[
            fn []([]) -> [] {}
    ]],
            {
                i(1),
                i(2),
                i(3),
            },
            { delimiters = "[]" }
        )
    ),
    s({ trig = "afn", dscr = "Async Rust function", priority = 50 },
        fmt(
            [[
            async fn []([]) {}
    ]],
            {
                i(1),
                i(2)
            },
            { delimiters = "[]" }
        )
    ),
    s({ trig = "afnr", dscr = "Async Rust function with return value", priority = 100 },
        fmt(
            [[
            async fn []([]) -> [] {}
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
