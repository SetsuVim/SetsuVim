return{
    'stevearc/oil.nvim',
    lazy = true,
    cmd = "Oil",
    keys = {
        { "-", "<cmd>Oil<CR>", mode = "n", desc = "Open Oil" },
    },
    dependencies = { "nvim-mini/mini.icons" },
    opts = {},
}
