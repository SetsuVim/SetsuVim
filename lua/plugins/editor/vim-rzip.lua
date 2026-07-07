return {
    "lbrayner/vim-rzip",
    lazy = true,
    ft = { "zip" },
    init = function()
        vim.cmd.runtime("plugin/zipPlugin.vim")
    end,
}
