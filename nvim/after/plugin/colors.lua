require("catppuccin").setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    compile_path = vim.fn.stdpath("cache") .. "/catppuccin",
    styles = {
        comments = { "italic" },
        conditionals = { "italic" },
        loops = { "italic" },
        functions = { "bold" },
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
    },
    color_overrides = {
        mocha = {
            text = "#f1f1ef",
            base = "#3f4946",
			mantle = "#303231",
            },
	},
      custom_highlights = function(colors)
    return {
      Type = { fg = "#18eff5" },
      ["@type"] = { fg = "#18eff5" },
      ["@type.builtin"] = { fg = "#18eff5" },
      Operator = {fg = "#b378b6"},
      ["@operator"] = {fg = "#b378b6"},
      ["@operator.builtin"] = {fg = "#b378b6"},
      Keyword = {fg = "#1c3eed"},
      ["@keyword"] = {fg = "#1c3eed"},
      ["@keyword.builtin"] = {fg = "#1c3eed"},
      Function = { fg = "#ded032", style={"bold"}},
      ["@function"] = { fg = "#ded032", style={"bold"}},
      ["@function.builtin"] = { fg = "#ded032", style={"bold"}},
      Comment = { fg = "#f1f5d2", style={"italic"}},
      ["@comment"] = { fg = "#f1f5d2", style={"italic"}},
      ["@constant"] = { fg = "#d84ff7"},
      ["@constant.builtin"] = { fg = "#d84ff7"},
    }
  end,
    integrations = {
        cmp = true,
        telescope = true,
        treesitter = true,
    },
})
