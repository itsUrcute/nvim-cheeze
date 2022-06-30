local treesitter_dir = vim.fn.stdpath("data") .. "/site/pack/packer/start/nvim-treesitter"

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

require("mappings")

require("packer").init({
	display = {
		non_interactive = true
	}
})

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

		use "nmac427/guess-indent.nvim"

		use {
			"lewis6991/gitsigns.nvim",
			requires = "nvim-lua/plenary.nvim"
		}

		use "nvim-lualine/lualine.nvim"

		use {
			"neovim/nvim-lspconfig",
			"williamboman/nvim-lsp-installer"
		}

		use "kyazdani42/nvim-tree.lua"

		use {
			"nvim-telescope/telescope.nvim",
			requires = "nvim-lua/plenary.nvim"
		}

		use "cappyzawa/trim.nvim"

		if vim.fn.isdirectory(treesitter_dir) == 1 then
			use {
				"nvim-treesitter/nvim-treesitter",
				run = ":TSUpdate"
			}

			require("plugins")

			vim.cmd "autocmd User PackerComplete ++once lua print('All packages are up-to-date!')"
		else
			use {
				"nvim-treesitter/nvim-treesitter"
			}

			vim.cmd "autocmd User PackerComplete ++once lua require('plugins')"
		end

		require("packer").sync()
	end
)
