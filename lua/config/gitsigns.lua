local map = require("utils").map

map("<Leader>g", ":Gitsigns preview_hunk<CR>")

require("gitsigns").setup({
	keymaps = {}
})
