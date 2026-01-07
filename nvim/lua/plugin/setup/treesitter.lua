local treesitter = require("nvim-treesitter")

-- configure treesitter
treesitter.setup({
})

treesitter.install({
        "sql",
        "html",
        "css",
        "scss",
        "json",
        "javascript",
        "typescript",
        "tsx",
        "svelte",

        "python",
        "rust",
        "yaml",

        "markdown",
        -- "graphql",
        "bash",
        "lua",
        "vim",
        "dockerfile",
        "gitignore",
})


require('ts_context_commentstring').setup({
    enable = true
})
vim.g.skip_ts_context_commentstring_module = true
