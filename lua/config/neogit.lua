local map = require("utils").map

map("<Leader>gs", ":Neogit kind=split_above<CR>")

require("neogit").setup({
	signs = {
		section = { "+", "-" },
		item = { "+", "-" }
	}
})
