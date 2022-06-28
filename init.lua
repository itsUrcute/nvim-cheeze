local treesitter_dir = vim.fn.stdpath("data") .. "/site/pack/packer/start/nvim-treesitter"

require("packer").startup(
	function ()
		use "wbthomason/packer.nvim"

		use "navarasu/onedark.nvim"

		use {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/nvim-cmp",
			"L3MON4D3/LuaSnip",
			"saadparwaiz1/cmp_luasnip"
		}

		use "numToStr/Comment.nvim"

		use {
			"nmac427/guess-indent.nvim"
		}

		use {
			"lewis6991/gitsigns.nvim",
			requires = "nvim-lua/plenary.nvim"
		}

		use "nvim-lualine/lualine.nvim"

		use "ray-x/lsp_signature.nvim"

		use {
			"neovim/nvim-lspconfig",
			"williamboman/nvim-lsp-installer"
		}

		use "kyazdani42/nvim-tree.lua"

		if vim.fn.isdirectory(treesitter_dir) == 0 then
			use {
				"nvim-treesitter/nvim-treesitter"
			}
		else
			use {
				"nvim-treesitter/nvim-treesitter",
				run = ":TSUpdate"
			}
		end

		use {
			"nvim-telescope/telescope.nvim",
			requires = "nvim-lua/plenary.nvim"
		}

		use "cappyzawa/trim.nvim"

		vim.cmd "autocmd User PackerComplete ++once lua require('plugins')"

		require("packer").sync()
	end
)

local map = require("utils").map

vim.g.mapleader = " "
vim.g.python_recommended_style = 0

vim.o.cursorline = true
vim.o.list = true
vim.o.mouse = "a"
vim.o.number = true
vim.o.relativenumber = true
vim.o.shiftwidth = 4
vim.o.tabstop = 4
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
