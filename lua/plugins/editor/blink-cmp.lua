return {
    "saghen/blink.cmp",
    version = '1.*',
    lazy = true,
    event = { "InsertEnter", "CmdLineEnter" },
    dependencies = {
        "moyiz/blink-emoji.nvim",
    },
    opts = {
        keymap = {
            preset = "super-tab",
        },

        appearance = {
            use_nvim_cmp_as_default = false,
            nerd_font_variant = "mono",
        },

        completion = {
            documentation = {
                auto_show = true,
            },

            menu = {
                max_height = 20,

                draw = {
                    columns = {
                        { "label", "label_description", gap = 2 },
                        { "kind_icon", gap = 1 },
                        { "kind" },
                    },
                },
            },
        },

        signature = {
            enabled = true,
        },

        cmdline = {
            enabled = true,
            keymap = {
                preset = "cmdline",
            },

            sources = {
                "buffer",
                "cmdline",
                "path",
            },

            completion = {
                list = {
                    selection = {
                        preselect = false,
                        auto_insert = true,
                    },
                },
                menu = {
                    auto_show = true,
                },
            },
        },

        sources = {
            default = {
                "lsp",
                "path",
                "buffer",
                "snippets",
                "emoji",
            },

            providers = {
                emoji = {
                    module = "blink-emoji",
                    name = "Emoji",
                    score_offset = 15, -- Tune by preference
                    opts = {
                        insert = true, -- Insert emoji (default) or complete its name
                        ---@type string|table|fun():table
                        trigger = function()
                            return { ":" }
                        end,
                    },
                    should_show_items = function()
                        return vim.tbl_contains(
                            { "gitcommit", "markdown", "text" },
                            vim.o.filetype
                        )
                    end,
                },
            },
        },

        fuzzy = {
            implementation = "prefer_rust_with_warning",
        },
    },
}
