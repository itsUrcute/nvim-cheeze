local cmp = require("cmp")

vim.opt.completeopt = "menu,menuone,noselect"

cmp.setup({
	snippet = {
		expand = function (args)
			vim.fn["vsnip#anonymous"](args.body)
		end
	},
	mapping = {},
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "vsnip" }
	}, {
		{ name = "buffer" }
	})
})
