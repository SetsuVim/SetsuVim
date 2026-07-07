return {
    "kevalin/mermaid.nvim",
    lazy = true,
    ft = { "markdown", "mermaid" },
    dependencies = { "romus204/tree-sitter-manager.nvim" },
    config = function()
        require("mermaid").setup()
    end,
}
