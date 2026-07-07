return {
    "petertriho/nvim-scrollbar",
    lazy = true,
    event = { "BufRead", "BufNewFile" },
    dependencies = {
        "kevinhwang91/nvim-hlslens",
        "lewis6991/gitsigns.nvim",
    },
    opts = {},
}
