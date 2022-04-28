local tree_cb = require("nvim-tree.config").nvim_tree_callback

vim.g.nvim_tree_git_hl = 1
vim.g.nvim_tree_root_folder_modifier = ":t"
vim.g.nvim_tree_special_files = {}

vim.g.nvim_tree_show_icons = {
	git = 0,
	folders = 1,
	files = 1,
	folder_arrows = 0
}

vim.g.nvim_tree_icons = {
	default = "",
	folder = {
		default = "+",
		empty = "+",
		empty_open = "-",
		open = "-",
		symlink = "+",
		symlink_open = "-"
	}
}

require("nvim-tree").setup({
	open_on_setup = true,
	hijack_cursor = true,
	view = {
		width = 30,
		side = "left",
		preserve_window_proportions = true,
		mappings = {
			list = {
				{ key = "<Tab>", cb = tree_cb("toggle") },
				{ key = "h", cb = tree_cb("dir_up") },
				{ key = "l", cb = tree_cb("cd") }
			}
		}
	},
	actions = {
		open_file = {
			resize_window = true
		}
	}
})
