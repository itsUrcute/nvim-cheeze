local cmp = require("cmp")

vim.opt.completeopt = "menu,menuone,noselect"

cmp.setup({
	mapping = cmp.mapping.preset.insert({
		["<Tab>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
		["<S-Tab>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert })
	}),
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
