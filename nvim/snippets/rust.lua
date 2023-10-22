local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

return {
    s({ trig = "tmod", dscr = "unit test module", priority = 50 },
        fmt(
            [[
            #[cfg(test)]
            mod tests {
                12
            }
    ]],
            {
                i(1),
            },
            { delimiters = "12" }
        )
    ),
    s({ trig = "tf", dscr = "unit test function", priority = 50 },
        fmt(
            [[
            #[test]
            fn 12() {}
    ]],
            {
                i(1),
            },
            { delimiters = "12" }
        )
    ),
}
