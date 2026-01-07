return {
    {
        "nvim-telescope/telescope.nvim",
        branch = "master",
        cmd = "Telescope",
        dependencies = {
            "nvim-lua/plenary.nvim",
            {
                "nvim-telescope/telescope-fzf-native.nvim",
                -- build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
                build = "make",
            },
        },
        config = function()
            require("plugin.setup.telescope")
        end,
    },
}
