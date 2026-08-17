return {
    "SetsuVim/sv-rubi.nvim",
    lazy = true,
    cmd = { "RubiInsert", "RubiInsertAC" },
    keys = {
        { "<leader>sr", "<cmd>RubiInsert<CR>", mode = { "n", "v" }, desc = "Insert Rubi" },
        { "<leader>sR", "<cmd>RubiInsertAC<CR>", mode = { "n", "v" }, desc = "Insert Rubi with AutoComplete" },
    }
}
