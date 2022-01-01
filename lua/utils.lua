local M = {}

M.map = function (lhs, rhs)
	vim.api.nvim_set_keymap("n", lhs, rhs, { noremap = true, silent = true })
end

return M
