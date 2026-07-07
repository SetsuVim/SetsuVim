return {
    "folke/snacks.nvim",
    lazy = true,
    event = "VeryLazy",
    module = "snacks",
    keys = {
        { "<leader>ul", function() require("snacks").toggle.line_number():toggle() end, desc = "toggle line numbers" },
        {
            "<leader>ua",
            function()
                require("snacks").toggle.option("showtabline", {
                    off = 0,
                    on = vim.o.showtabline > 0 and vim.o.showtabline or 2,
                    name = "tabline",
                }):toggle()
            end,
            desc = "toggle tabline",
        },
        {
            "<leader>ub",
            function()
                require("snacks").toggle.option("background", {
                    off = "light",
                    on = "dark",
                    name = "dark background",
                }):toggle()
            end,
            desc = "toggle dark background",
        },
    },
    opts = {
        bigfile = {
            enabled = true,

            notify = true,
            size = 100 * 1024 * 1024, -- 100mb
            line_length = 10000,
        },
        toggle = {
            enabled = true,
        },
    },
}
