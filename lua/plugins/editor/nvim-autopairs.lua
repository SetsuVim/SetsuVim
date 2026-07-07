return{
    "windwp/nvim-autopairs",
    lazy = true,
    event = "InsertEnter",
    config = function()
        local npairs = require("nvim-autopairs")
        local Rule = require("nvim-autopairs.rule")

        npairs.setup({
            check_ts = true,
            fast_wrap = {},
        })

        -- 「」
        npairs.add_rule(
            Rule("「", "」")
        )

        -- 『』
        npairs.add_rule(
            Rule("『", "』")
        )

        -- （）
        npairs.add_rule(
            Rule("（", "）")
        )

        -- 【】
        npairs.add_rule(
            Rule("【", "】")
        )

        -- 〈〉
        npairs.add_rule(
            Rule("〈", "〉")
        )

        -- 《》
        npairs.add_rule(
            Rule("《", "》")
        )

        -- 〔〕
        npairs.add_rule(
            Rule("〔", "〕")
        )

        -- ［］
        npairs.add_rule(
            Rule("［", "］")
        )

        -- ｛｝
        npairs.add_rule(
            Rule("｛", "｝")
        )

        -- ＜＞
        npairs.add_rule(
            Rule("＜", "＞")
        )

    end,
}
