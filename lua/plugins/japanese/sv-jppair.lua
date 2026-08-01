return {
    "SetsuVim/sv-jppair.nvim",
    event = "InsertEnter",
    config = function()
        require("sv-jppair").setup({
        })
    end,
}
