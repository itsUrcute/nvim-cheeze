require("plugins")

require("config.trim")
require("config.onedark")
require("config.nvim-lsp-installer")
require("config.nvim-treesitter")
require("config.nvim-tree")
require("config.feline")

local map = require("utils").map

vim.g.mapleader = " "

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
