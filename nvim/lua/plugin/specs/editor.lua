return {
	{
		"folke/tokyonight.nvim",
		lazy = false, -- Load immediately
		priority = 1000, -- Load before other plugins
		config = function()
			require("plugin.setup.tokyonight")
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		lazy = false,
		config = function()
			require("plugin.setup.lualine")
		end,
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		lazy = false,
		config = function()
			require("plugin.setup.indent-blankline")
		end,
	},
	{
		"norcalli/nvim-colorizer.lua",
		lazy = false,
		config = function()
			require("plugin.setup.colorizer")
		end,
	},
	-- Essential plugins
	{ "nvim-lua/plenary.nvim", lazy = false },
	{ "tpope/vim-surround", lazy = false },
	-- { "szw/vim-maximizer", keys = { "<leader>m" } }, -- Load when key is pressed
	{ "szw/vim-maximizer", lazy = false }, -- Load when key is pressed
	-- { "christoomey/vim-tmux-navigator", event = "VeryLazy" },
	{ "christoomey/vim-tmux-navigator", lazy = false },

	-- Python specific
	{ "jeetsukumaran/vim-pythonsense", ft = "python" },
	{ "Vimjas/vim-python-pep8-indent", ft = "python" },

	-- Auto pairs
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = function()
			require("plugin.setup.autopairs")
		end,
	},

	-- Comments
	{
		"numToStr/Comment.nvim",
		event = "VeryLazy",
		config = function()
			require("Comment").setup()
		end,
	},

	-- Scrolling
	{
		"karb94/neoscroll.nvim",
		lazy = false,
		config = function()
			require("plugin.setup.neoscroll")
		end,
	},

	-- Toggle diagnostics
	{
		"ColinKennedy/toggle-lsp-diagnostics.nvim",
		branch = "feature/disable_per_buffer",
		event = "LspAttach",
		config = function()
			require("plugin.setup.toggle-diagnostics")
		end,
	},
	{
		"nvim-tree/nvim-tree.lua",
		cmd = { "NvimTreeToggle", "NvimTreeFocus" },
		config = function()
			require("plugin.setup.nvim-tree")
		end,
	},
}
