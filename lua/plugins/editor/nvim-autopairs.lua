return {
    "windwp/nvim-autopairs",
    lazy = true,
    event = "InsertEnter",
    config = function()
        local npairs = require("nvim-autopairs")

        npairs.setup({
            check_ts = false,
            fast_wrap = {},
            map_cr = true,
            map_bs = true,
        })
    end,
}
