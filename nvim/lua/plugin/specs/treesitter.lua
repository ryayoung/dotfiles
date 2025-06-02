return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        -- event = { "BufReadPost", "BufNewFile" },
        lazy = false,
        dependencies = {
            "JoosepAlviste/nvim-ts-context-commentstring",
        },
        config = function()
            require("plugin.setup.treesitter")
        end,
    },
}
