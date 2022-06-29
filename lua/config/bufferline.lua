require("bufferline").setup({
	options = {
		indicator_icon = " ",
		offsets = {
			{ filetype = "NvimTree", padding = 1 }
		},
		show_buffer_icons = false,
		show_buffer_close_icons = false
	},
	highlights = {
		buffer_selected = {
			gui = "none"
		}
	}
})
