local M = {}

M.attach = function()
	vim.api.nvim_set_keymap(
		"n",
		"<Tab>k",
		"<cmd>lua vim.lsp.diagnostic.goto_next({ popup_opts = { border = 'single' }})<CR>",
		{ noremap = true, silent = true }
	)

	vim.api.nvim_set_keymap(
		"n",
		"<Tab>j",
		"<cmd>lua vim.lsp.diagnostic.goto_prev({ popup_opts = { border = 'single' }})<CR>",
		{ noremap = true, silent = true }
	)

	vim.api.nvim_set_keymap(
		"n",
		"<Tab><Tab>",
		"<cmd>lua vim.lsp.diagnostic.show_line_diagnostics({ border = 'single' })<CR>",
		{ noremap = true, silent = true }
	)
end
return M
