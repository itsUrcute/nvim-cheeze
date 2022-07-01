local lspconfig = require("lspconfig")

require("nvim-lsp-installer").setup({})

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
	vim.lsp.diagnostic.on_publish_diagnostics, {
		virtual_text = {
			prefix = "",
			format = function (diagnostic)
				return diagnostic.message .. " "
			end
		}
	}
)

lspconfig.hls.setup({})
