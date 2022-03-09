local map = require("utils").map

map("<Leader>gd", ":Gitsigns preview_hunk<CR>")
map("<Leader>gr", ":Gitsigns reset_hunk<CR>")

require("gitsigns").setup({
	keymaps = {}
})
