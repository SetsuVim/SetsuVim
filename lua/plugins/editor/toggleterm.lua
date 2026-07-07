return {
    "akinsho/toggleterm.nvim",
    lazy = true,
    event = "VeryLazy",
    cmd = "ToggleTerm",
    keys = {
        { "<C-\\>", "<Cmd>ToggleTerm<CR>", mode = "n" },
        { "<C-\\>", "<Cmd>ToggleTerm<CR>", mode = "i" },
    },
    config = function()
        require("toggleterm").setup({
            open_mapping = [[<C-\>]],
            direction = "horizontal",
            size = 10,
            shade_terminals = true,
            start_in_insert = true,
            persist_size = true,
        })
    end,
}
