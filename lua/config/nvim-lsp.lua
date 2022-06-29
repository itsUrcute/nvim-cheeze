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

require("nvim-lsp-installer").on_server_ready(
	function (server)
		local opts = {}
		opts.capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())

		if server.name == "eslint" then
			opts = {
				filetypes = { "javascript", "svelte", "vue" }
			}
		end

		server:setup(opts)
	end
)
