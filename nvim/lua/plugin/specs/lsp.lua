return {
    -- Mason
    {
        "williamboman/mason.nvim",
        build = ":MasonUpdate",
        config = function()
            require("plugin.setup.mason")
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = { "williamboman/mason.nvim" },
    },
    
    -- LSP Config
    {
        "neovim/nvim-lspconfig",
        event = { "BufReadPre", "BufNewFile" },
        dependencies = {
            "williamboman/mason-lspconfig.nvim",
            "hrsh7th/cmp-nvim-lsp",
        },
        config = function()
            require("plugin.setup.lspconfig")
        end,
    },
    
    -- LSP UI enhancements
    {
        "nvimdev/lspsaga.nvim",
        event = "LspAttach",
        config = function()
            require("plugin.setup.lspsaga")
        end,
    },
    
    -- Formatting & Linting
    {
        "nvimtools/none-ls.nvim",
        event = { "BufReadPre", "BufNewFile" },
        dependencies = { "mason.nvim" },
        config = function()
            require("plugin.setup.none-ls")
        end,
    },
    {
        "jayp0521/mason-null-ls.nvim",
        event = { "BufReadPre", "BufNewFile" },
        dependencies = {
            "williamboman/mason.nvim",
            "nvimtools/none-ls.nvim",
        },
    },
}
