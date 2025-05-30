-- SETTINGS
require("plugin.lazy")

_G.PythonLSP = true
_G.CSSLSP = false

vim.o.shortmess = vim.o.shortmess .. 'I'

vim.cmd("source ~/.config/nvim/lua/vim/run-python.vim")
vim.cmd("source ~/.config/nvim/lua/vim/vim-core.vim")

require("core.set")
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
