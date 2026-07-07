return {
    "akinsho/bufferline.nvim",
    lazy = true,
    event = "UIEnter",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("bufferline").setup({
            options = {
                offsets = {
                    {
                        filetype = "neo-tree",
                        text = "Explorer",
                        text_align = "left",
                        separator = true,
                    },
                },
            },
        })
    end,
}
