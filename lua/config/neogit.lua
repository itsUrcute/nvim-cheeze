local map = require("utils").map

map("<Leader>gs", ":Neogit kind=replace<CR>")

require("neogit").setup({
	disable_hint = true,
	disable_commit_confirmation = true,
	disable_insert_on_commit = false,
	use_magit_keybindings = true,
	signs = {
		section = { "+", "-" },
		item = { "+", "-" }
	}
})
