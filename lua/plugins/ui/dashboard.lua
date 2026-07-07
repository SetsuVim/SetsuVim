return{
    "nvimdev/dashboard-nvim",
    lazy = true,
    event = "VimEnter",
    config = function()
        vim.cmd("hi DashboardHeader gui=bold cterm=bold")

        local function make_header()
            local v = vim.version()

            local title   = "Neo - Vi IMproved"
            local version = string.format("NVIM v%d.%d.%d", v.major, v.minor, v.patch)

            local art = {
                "███████╗███████╗████████╗███████╗██╗   ██╗    ██╗   ██╗██╗███╗   ███╗",
                "██╔════╝██╔════╝╚══██╔══╝██╔════╝██║   ██║    ██║   ██║██║████╗ ████║",
                "███████╗█████╗     ██║   ███████╗██║   ██║    ██║   ██║██║██╔████╔██║",
                "╚════██║██╔══╝     ██║   ╚════██║██║   ██║    ╚██╗ ██╔╝██║██║╚██╔╝██║",
                "███████║███████╗   ██║   ███████║╚██████╔╝     ╚████╔╝ ██║██║ ╚═╝ ██║",
                "╚══════╝╚══════╝   ╚═╝   ╚══════╝ ╚═════╝       ╚═══╝  ╚═╝╚═╝     ╚═╝",
            }

            local max_width = 0
            for _, l in ipairs(art) do
                max_width = math.max(max_width, vim.fn.strdisplaywidth(l))
            end

            local left  = version
            local right = title

            local left_w  = vim.fn.strdisplaywidth(left)
            local right_w = vim.fn.strdisplaywidth(right)

            local dash_len = max_width - left_w - right_w - 2 + 0
            if dash_len < 1 then
                dash_len = 1
            end

            local middle = string.rep(" ", dash_len)

            local combined = string.format("%s %s %s", left, middle, right)

            return vim.list_extend({
                "",
            }, vim.list_extend(art, {
                "",
                combined,
                "",
                "",
            }))
        end

        require("dashboard").setup({
            -- theme = "hyper",
            theme = "doom",
            config = {
                header = make_header(),

                center = {
                    {
                        icon = "  ",
                        desc = "Find File                                       ",
                        key = "f",
                        key_format = " [%s]",
                        action = "Telescope find_files",
                    },
                    {
                        icon = "  ",
                        desc = "New File                                        ",
                        key = "n",
                        key_format = " [%s]",
                        action = "ene | startinsert",
                    },
                    {
                        icon = "  ",
                        desc = "Find Text                                       ",
                        key = "g",
                        key_format = " [%s]",
                        action = "Telescope live_grep",
                    },
                    {
                        icon = "  ",
                        desc = "Recent Files                                    ",
                        key = "r",
                        key_format = " [%s]",
                        action = "Telescope oldfiles",
                    },
                    {
                        icon = "  ",
                        desc = "Config                                          ",
                        key = "c",
                        key_format = " [%s]",
                        action = function ()
                            require("telescope.builtin").find_files({
                                cwd = vim.fn.stdpath("config"),
                            })
                        end,
                    },
                    {
                        icon = "  ",
                        desc = "Quit                                            ",
                        key = "q",
                        key_format = " [%s]",
                        action = "qa",
                    },
                },
                footer = { "PROTTYPE EDITION" },

                vertical_center = true,
            },
        })
    end,
}
