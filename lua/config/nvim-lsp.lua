local map = require("utils").map
local path = require("nvim-lsp-installer.path")
local settings = require("nvim-lsp-installer.settings")

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

map("<Leader>d", ":lua vim.diagnostic.open_float()<CR>")
map("<Leader>h", ":lua vim.lsp.buf.hover()<CR>")
map("<Leader>l", ":LspRestart<CR>")

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
