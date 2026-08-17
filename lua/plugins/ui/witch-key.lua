return {
    "folke/which-key.nvim",
    lazy = true,
    event = "UIEnter",
    ---@class wk.Config
    opts = {
        preset = "helix",
        spec = {
            {
                mode = { "n", "x" },
                { "<leader><tab>", group = "tabs" },
                { "<leader>b", group = "buffers" },
                { "<leader>s", group = "writting assistants"},
                { "<leader>u", group = "ui" },
                { "<leader>w", group = "windows" },
            }
        },
    }
}

