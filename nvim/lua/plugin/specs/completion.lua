return {
    -- Completion
    {
        "hrsh7th/nvim-cmp",
        event = "InsertEnter",
        dependencies = {
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-nvim-lsp",
            "onsails/lspkind.nvim",
            -- Add LuaSnip if you use it
        },
        config = function()
            require("plugin.setup.cmp_luasnip_lspkind")
        end,
    },
}
