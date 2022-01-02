return require("packer").startup(
	function ()
		use "wbthomason/packer.nvim"

		use "navarasu/onedark.nvim"

		use {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/nvim-cmp",
			"hrsh7th/vim-vsnip",
			"hrsh7th/cmp-vsnip"
		}

		use "feline-nvim/feline.nvim"

		use {
			"lewis6991/gitsigns.nvim",
			requires = {
				"nvim-lua/plenary.nvim"
			}
		}

		use {
			"neovim/nvim-lspconfig",
			"williamboman/nvim-lsp-installer"
		}

		use "kyazdani42/nvim-tree.lua"

		use {
			"nvim-treesitter/nvim-treesitter",
			run = ":TSUpdate"
		}

		use "cappyzawa/trim.nvim"
	end
)
