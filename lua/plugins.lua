return require("packer").startup(
	function ()
		use "wbthomason/packer.nvim"
		use "cappyzawa/trim.nvim"
		use "navarasu/onedark.nvim"
		use "kyazdani42/nvim-tree.lua"
		use "feline-nvim/feline.nvim"

		use {
			"lewis6991/gitsigns.nvim",
			requires = {
				"nvim-lua/plenary.nvim"
			}
		}

		use {
			"nvim-treesitter/nvim-treesitter",
			run = ":TSUpdate"
		}

		use {
			"neovim/nvim-lspconfig",
			"williamboman/nvim-lsp-installer"
		}
	end
)
