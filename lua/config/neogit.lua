local map = require("utils").map

map("<Leader>gs", ":Neogit kind=split_above<CR>")

require("neogit").setup({
	disable_hint = true,
	disable_commit_confirmation = true,
	disable_insert_on_commit = false,
	signs = {
		section = { "+", "-" },
		item = { "+", "-" }
	}
})

require("neogit").config.use_magit_keybindings()
