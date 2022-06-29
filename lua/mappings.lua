local map = require("utils").map
local map_visual = require("utils").map_visual

map("<Leader>w", ":wincmd w<CR>")

map("<Leader>c", ":lua require('Comment.api').toggle_current_linewise()<CR>")
map_visual("<Leader>c", ":lua require('Comment.api').toggle_linewise_op(vim.fn.visualmode())<CR>")

map("<Leader>gd", ":Gitsigns preview_hunk<CR>")
map("<Leader>gr", ":Gitsigns reset_hunk<CR>")

map("<Leader>d", ":lua vim.diagnostic.open_float()<CR>")
map("<Leader>h", ":lua vim.lsp.buf.hover()<CR>")
map("<Leader>l", ":LspRestart<CR>")

map("<Leader>tf", ":Telescope find_files<CR>")
map("<Leader>tl", ":Telescope live_grep<CR>")
