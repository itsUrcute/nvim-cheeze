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
			require('luasnip').lsp_expand(args.body)
		end
	},
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "luasnip" }
	}, {
		{ name = "buffer" }
	}),
	window = {
		documentation = true
	}
})
