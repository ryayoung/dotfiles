local treesitter = require("nvim-treesitter.configs")

-- configure treesitter
treesitter.setup({
    -- enable syntax highlighting
    highlight = {
        enable = true,
        -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
        -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
        -- the name of the parser)
        -- list of language that will be disabled
        -- disable = { "c", "rust" },
        -- Or use a function for more flexibility, e.g. to disable slow treesitter highlight for large files
        disable = function(lang, buf)
            local max_filesize = 100 * 1024 -- 50 KB
            local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
            if ok and stats and stats.size > max_filesize then
                return true
            end
        end,
    },
    -- enable indentation
    indent = {
        enable = true,
    },
    -- context_commentstring = {
    --     enable = true,
    -- },
    -- enable autotagging (w/ nvim-ts-autotag plugin)
    autotag = { enable = false },
    -- ensure these language parsers are installed
    ensure_installed = {
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
    },
    -- auto install above language parsers
    auto_install = true,
    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,
})

require('ts_context_commentstring').setup({
    enable = true
})
vim.g.skip_ts_context_commentstring_module = true
