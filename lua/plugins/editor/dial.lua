return {
    "monaqa/dial.nvim",
    lazy = true,
    keys = {
        {
            "<C-a>",
            function()
                require("dial.map").manipulate("increment", "normal")
            end,
            mode = "n",
            desc = "Increment",
        },
        {
            "<C-x>",
            function()
                require("dial.map").manipulate("decrement", "normal")
            end,
            mode = "n",
            desc = "Decrement",
        },
        {
            "g<C-a>",
            function()
                require("dial.map").manipulate("increment", "gnormal")
            end,
            mode = "n",
            desc = "Increment (g)",
        },
        {
            "g<C-x>",
            function()
                require("dial.map").manipulate("decrement", "gnormal")
            end,
            mode = "n",
            desc = "Decrement (g)",
        },
        {
            "<C-a>",
            function()
                require("dial.map").manipulate("increment", "visual")
            end,
            mode = "x",
            desc = "Increment",
        },
        {
            "<C-x>",
            function()
                require("dial.map").manipulate("decrement", "visual")
            end,
            mode = "x",
            desc = "Decrement",
        },
        {
            "g<C-a>",
            function()
                require("dial.map").manipulate("increment", "gvisual")
            end,
            mode = "x",
            desc = "Increment (g)",
        },
        {
            "g<C-x>",
            function()
                require("dial.map").manipulate("decrement", "gvisual")
            end,
            mode = "x",
            desc = "Decrement (g)",
        },
    },
    config = function()
        local augend = require("dial.augend")
        require("dial.config").augends:register_group{
            default = {
                augend.integer.alias.decimal,
                augend.integer.alias.hex,
                augend.integer.alias.binary,
                augend.integer.alias.octal,

                augend.date.alias["%Y/%m/%d"],
                augend.date.alias["%Y-%m-%d"],
                augend.date.alias["%m/%d/%Y"],
                augend.date.alias["%d.%m.%Y"],

                augend.date.alias["%H:%M"],
                augend.date.alias["%H:%M:%S"],

                augend.constant.alias.bool,

                augend.constant.new({
                    elements = { "true", "false" },
                    word = true,
                    cyclic = true,
                }),

                augend.constant.new({
                    elements = { "on", "off" },
                    word = true,
                    cyclic = true,
                }),

                augend.constant.new({
                    elements = { "yes", "no" },
                    word = true,
                    cyclic = true,
                }),

                augend.constant.new({
                    elements = { "enable", "disable" },
                    word = true,
                    cyclic = true,
                }),

                augend.constant.new({
                    elements = {
                        "Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday",
                    },
                    word = true,
                    cyclic = true,
                }),

                augend.constant.new({
                    elements = {
                        "Mon","Tue","Wed","Thu","Fri","Sat","Sun",
                    },
                    word = true,
                    cyclic = true,
                }),

                augend.constant.new({
                    elements = { "[ ]", "[x]" },
                    word = false,
                    cyclic = true,
                }),

                augend.constant.new({
                    elements = {
                        "零",
                        "一",
                        "二",
                        "三",
                        "四",
                        "五",
                        "六",
                        "七",
                        "八",
                        "九",
                        "十",
                    },
                    word = false,
                }),

                augend.constant.new({
                    elements = {
                        "零",
                        "壱",
                        "弐",
                        "参",
                        "肆",
                        "伍",
                        "陸",
                        "漆",
                        "捌",
                        "玖",
                        "拾",
                    },
                    word = false,
                }),

                augend.constant.new({
                    elements = {
                        "①","②","③","④","⑤",
                        "⑥","⑦","⑧","⑨","⑩",
                        "⑪","⑫","⑬","⑭","⑮",
                        "⑯","⑰","⑱","⑲","⑳",
                    },
                    word = false,
                }),

                augend.constant.new({
                    elements = {
                        "㊀","㊁","㊂","㊃","㊄",
                        "㊅","㊆","㊇","㊈","㊉",
                    },
                    word = false,
                }),

                augend.constant.new({
                    elements = {
                        "甲",
                        "乙",
                        "丙",
                        "丁",
                        "戊",
                        "己",
                        "庚",
                        "辛",
                        "壬",
                        "癸",
                    },
                    word = false,
                    cyclic = true,
                }),

                augend.constant.new({
                    elements = {
                        "子",
                        "丑",
                        "寅",
                        "卯",
                        "辰",
                        "巳",
                        "午",
                        "未",
                        "申",
                        "酉",
                        "戌",
                        "亥",
                    },
                    word = false,
                    cyclic = true,
                }),

                augend.constant.new({
                    elements = {
                        "月",
                        "火",
                        "水",
                        "木",
                        "金",
                        "土",
                        "日",
                    },
                    word = true,
                    cyclic = true,
                }),

                augend.constant.new({
                    elements = {
                        "明治",
                        "大正",
                        "昭和",
                        "平成",
                        "令和",
                    },
                    word = true,
                }),

                augend.semver.alias.semver,
            },
        }
    end,
}
