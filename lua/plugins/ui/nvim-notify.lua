return {
    "rcarriga/nvim-notify",
    event = "VeryLazy",
    config = function ()
        require("notify").setup({
            stages = "fade",
            timeout = 3000,
            top_down = false,
        })
    end,
}
