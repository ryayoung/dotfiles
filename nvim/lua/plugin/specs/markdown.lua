return {
	{
		"iamcco/markdown-preview.nvim",
		ft = "markdown",
		build = "cd app && npm install",
		init = function()
			vim.g.mkdp_filetypes = { "markdown" }
		end,
	},
	{
		"Kicamon/markdown-table-mode.nvim",
		config = function()
			require("plugin.setup.markdown-table-mode")
		end,
	},
}
