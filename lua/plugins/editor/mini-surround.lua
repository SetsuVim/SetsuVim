return {
    "nvim-mini/mini.surround",
    lazy = true,
    event = { "BufReadPost", "BufNewFile" },
    opts = {
        custom_surroundings = {
            -- 「」
            ["k"] = {
                output = { left = "「", right = "」" },
            },

            -- 『』
            ["K"] = {
                output = { left = "『", right = "』" },
            },

            -- （）
            ["p"] = {
                output = { left = "（", right = "）" },
            },

            -- 【】
            ["b"] = {
                output = { left = "【", right = "】" },
            },

            -- 〈〉
            ["<"] = {
                output = { left = "〈", right = "〉" },
            },

            -- 《》
            [">"] = {
                output = { left = "《", right = "》" },
            },

            -- 〔〕
            ["["] = {
                output = { left = "〔", right = "〕" },
            },

            -- ［］
            ["]"] = {
                output = { left = "［", right = "］" },
            },

            -- ｛｝
            ["{"] = {
                output = { left = "｛", right = "｝" },
            },

            -- ＜＞
            ["c"] = {
                output = { left = "＜", right = "＞" },
            },

            -- ※※
            ["*"] = {
                output = { left = "※", right = "※" },
            },
        },
    }
}
