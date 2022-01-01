local map = require("utils").map

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

map("gh", ":lua vim.lsp.buf.hover()<CR>")

require("nvim-lsp-installer").on_server_ready(
	function (server)
		local opts = {}
		server:setup(opts)
	end
)
