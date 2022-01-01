return require("packer").startup(
	function ()
		use "wbthomason/packer.nvim"

		use "navarasu/onedark.nvim"

		use {
			"nvim-treesitter/nvim-treesitter",
			run = ":TSUpdate"
		}

		use "kyazdani42/nvim-tree.lua"

		use "feline-nvim/feline.nvim"
	end
)
