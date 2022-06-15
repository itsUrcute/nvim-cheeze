local map = require("utils").map
local map_visual = require("utils").map_visual

require("Comment").setup({
	mappings = {
		extra = false
	}
})

map("<Leader>c", ":lua require('Comment.api').toggle_current_linewise()<CR>")
map_visual("<Leader>c", ":lua require('Comment.api').toggle_linewise_op(vim.fn.visualmode())<CR>")
