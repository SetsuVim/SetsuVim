return {
    'nvim-telescope/telescope.nvim',
    lazy = true,
    cmd = "Telescope",
    dependencies = {
        'nvim-lua/plenary.nvim',
    },
    config = function ()
        require('telescope').setup({
            defaults = {
                file_ignore_patterns = {
                    "%.env",
                    "yarn.lock",
                    "package%-lock.json",
                    "lazy%-lock.json",
                    "init.sql",

                    "node_modules/.*",
                    "target/.*",
                    ".git/.*",
                    ".vs/.*",

                    "node_modules%\\.*",
                    "target%\\.*",
                    ".git\\.*",
                    ".vs\\.*",
                },
            },
            pickers = {
                find_files = {
                    hidden = true,
                    no_ignore = true,
                },
            },
            extensions = {
                fzf = {
                    fuzzy = true,
                    override_generic_sorter = true,
                    override_file_sorter = true,
                    case_mode = "smart_case",
                },
                file_browser = {
                    hijack_netrw = true,
                },
            }
        })

        require('telescope').load_extension("fzf")
        require("telescope").load_extension("file_browser")
    end
}
