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

map("gh", ":lua vim.lsp.buf.hover()<CR>")

require("nvim-lsp-installer").on_server_ready(
	function (server)
		local opts = {}
		opts.capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())

		if server.name == "volar" then
			opts = {
				init_options = {
					typescript = {
						serverPath = path.concat({
							settings._DEFAULT_SETTINGS.install_root_dir,
							"tsserver",
							"node_modules",
							"typescript",
							"lib",
							"tsserverlibrary.js"
						})
					}
				}
			}
		end

		server:setup(opts)
	end
)
