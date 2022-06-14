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

		use {
			"nvim-treesitter/nvim-treesitter",
			run = ":TSUpdate"
		}

		use {
			"nvim-telescope/telescope.nvim",
			requires = "nvim-lua/plenary.nvim"
		}

		use "cappyzawa/trim.nvim"
	end
)
