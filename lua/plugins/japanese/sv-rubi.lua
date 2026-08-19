return {
    "SetsuVim/sv-rubi.nvim",
    lazy = true,
    cmd = { "RubiInsert", "RubiInsertAC" },
    keys = {
        { "<leader>sr", "<cmd>RubiInsert<CR>", mode = "n", desc = "Insert Rubi" },
        { "<leader>sr", ":'<,'>RubiInsert<CR>", mode = "v", desc = "Insert Rubi" },
        { "<leader>sR", ":'<,'>RubiInsertAC<CR>", mode = "v", desc = "Insert Rubi (AC)" },
    },
    opts = {}
}
