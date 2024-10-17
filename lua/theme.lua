-- Lua
require('onedark').setup {
    style = 'deep'
}
require('onedark').load()

local color_scheme = "onedark"
vim.cmd("colorscheme " .. color_scheme)
