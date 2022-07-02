local tree_cb = require("nvim-tree.config").nvim_tree_callback

require("nvim-tree").setup({
	open_on_setup = true,
	open_on_setup_file = true,
	hijack_cursor = true,
	view = {
		width = 30,
		mappings = {
			list = {
				{ key = "<Tab>", cb = tree_cb("toggle") },
				{ key = "h", cb = tree_cb("dir_up") },
				{ key = "l", cb = tree_cb("cd") }
			}
		}
	},
	renderer = {
		highlight_git = true,
		root_folder_modifier = ":t",
		indent_markers = {
			enable = true,
			icons = {
				corner = "│ ",
				edge = "│ ",
				item = "│ ",
				none = "│ "
			}
		},
		icons = {
			show = {
				file = false,
				folder = true,
				folder_arrow = false,
				git = false
			},
			glyphs = {
				default = "",
				folder = {
					default = "+",
					open = "-",
					empty = "+",
					empty_open = "-",
					symlink = "+",
					symlink_open = "-"
				}
			}
		},
		special_files = {}
	},
	actions = {
		open_file = {
			resize_window = true
		}
	}
})

vim.api.nvim_command("highlight! link NvimTreeIndentMarker Comment")
