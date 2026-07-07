return {
    'nemanjamalesija/smart-paste.nvim',
    lazy = true,
    event = { "BufReadPre", "BufNewFile" },
    config = function ()
        require('smart-paste').setup({
            exclude_filetypes = {},
        })
    end,
}
