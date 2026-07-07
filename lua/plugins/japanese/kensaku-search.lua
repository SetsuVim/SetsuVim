return {
    "lambdalisue/vim-kensaku-search",
    lazy = true,
    keys = {
        { "<CR>", "<Plug>(kensaku-search-replace)<CR>", mode = "c", desc = "Kensaku Search" },
    },
    event = "CmdlineEnter",
    dependencies = { "vim-denops/denops.vim", "lambdalisue/vim-kensaku" },
}
