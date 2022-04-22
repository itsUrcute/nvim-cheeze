local cmp = require("cmp")

vim.opt.completeopt = "menu,menuone,noselect"

cmp.setup({
	mapping = cmp.mapping.preset.insert({}),
	preselect = cmp.PreselectMode.None,
	snippet = {
		expand = function (args)
			vim.fn["vsnip#anonymous"](args.body)
		end
	},
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "vsnip" }
	}, {
		{ name = "buffer" }
	}),
	window = {
		documentation = true
	}
})
