require("plugins")

local map = require("utils").map

vim.g.mapleader = " "
vim.g.python_recommended_style = 0

vim.o.cursorline = true
vim.o.list = true
vim.o.mouse = "a"
vim.o.number = true
vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.o.termguicolors = true
vim.o.wrap = false

vim.opt.listchars:append({
	extends = "→",
	lead = "·",
	precedes = "←",
	tab = "│ ",
	trail = "·"
})

map("<Leader>w", ":wincmd w<CR>")

require("config.trim")
require("config.onedark")
require("config.nvim-tree")
require("config.feline")
require("config.gitsigns")
require("config.nvim-treesitter")
require("config.nvim-lsp-installer")
require("config.cmp")
