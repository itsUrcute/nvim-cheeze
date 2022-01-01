return require("packer").startup(
	function ()
		use "wbthomason/packer.nvim"

		use "cappyzawa/trim.nvim"

		use "navarasu/onedark.nvim"

		use {
			"nvim-treesitter/nvim-treesitter",
			run = ":TSUpdate"
		}

		use {
			"neovim/nvim-lspconfig",
			"williamboman/nvim-lsp-installer"
		}

		use "kyazdani42/nvim-tree.lua"

		use "feline-nvim/feline.nvim"
	end
)
