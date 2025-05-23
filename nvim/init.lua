-- SETTINGS
_G.PythonLSP = true
_G.CSSLSP = false

vim.o.shortmess = vim.o.shortmess .. 'I'

vim.cmd("source ~/.config/nvim/lua/vim/run-python.vim")
vim.cmd("source ~/.config/nvim/lua/vim/vim-core.vim")

require("core.set")
-- require("core.pyenv")

require("plugin.install")
require("plugin.setup.tokyonight") -- COLORSCHEME
require("plugin.setup.lualine") -- COLOR BAR
require("plugin.setup.telescope") -- FUZZY FINDING
require("plugin.setup.nvim-tree") -- FILE EXPLORER
require("plugin.setup.autopairs") -- AUTO PAIRS
require("plugin.setup.indent-blankline") -- SHOW INDENTATION
require("plugin.setup.neoscroll") -- Animated scrolling
require("plugin.setup.toggle-diagnostics") -- toggle diagnostics
require("plugin.setup.cmp_luasnip_lspkind") --
require("plugin.setup.treesitter") -- SYNTAX HIGHLIGHTING
require("plugin.setup.colorizer") -- COLORIZER
require("plugin.setup.mason") --
require("plugin.setup.lspconfig") --
require("plugin.setup.lspsaga") --
require("plugin.setup.none-ls") --

require("core.map")

if vim.g.neovide then
    require("core.neovide")
end


local function nlrf(keys, exec, options)
	return vim.keymap.set("n", "<leader>." .. keys, exec .. "<CR>", options)
end

nlrf("vrc", ":e ~/.config/nvim/init.lua")
nlrf("map", ":e ~/.config/nvim/lua/core/map.lua")
nlrf("set", ":e ~/.config/nvim/lua/core/set.lua")
nlrf("lsp", ":e ~/.config/nvim/lua/plugin/setup/lspconfig.lua")
nlrf("ini", ":e ~/.config/nvim/init.lua")


vim.cmd([[ 
    autocmd!
    autocmd BufLeave * silent! wall
]])

vim.diagnostic.config({
    virtual_text=true,
})
