local M = {}

local function setup_icons()
	local icons = {
		Class = " ",
		Color = " ",
		Constant = " ",
		Constructor = " ",
		Enum = "了 ",
		EnumMember = " ",
		Field = " ",
		File = " ",
		Folder = " ",
		Function = " ",
		Interface = "ﰮ ",
		Keyword = " ",
		Method = "ƒ ",
		Module = " ",
		Property = " ",
		Snippet = "﬌ ",
		Struct = " ",
		Text = " ",
		Unit = " ",
		Value = " ",
		Variable = " ",
	}

	local kinds = vim.lsp.protocol.CompletionItemKind
	for i, kind in ipairs(kinds) do
		kinds[i] = icons[kind] or kind
	end
end

local function setup_keymaps(bufnr)
	vim.api.nvim_buf_set_keymap(
		bufnr,
		"n",
		"<Tab>k",
		"<cmd>lua vim.lsp.diagnostic.goto_next({ popup_opts = { border = 'single' }})<CR>",
		{ noremap = true, silent = true }
	)

	vim.api.nvim_buf_set_keymap(
		bufnr,
		"n",
		"<Tab>j",
		"<cmd>lua vim.lsp.diagnostic.goto_prev({ popup_opts = { border = 'single' }})<CR>",
		{ noremap = true, silent = true }
	)

	vim.api.nvim_buf_set_keymap(
		bufnr,
		"n",
		"<Tab><Tab>",
		"<cmd>lua vim.lsp.diagnostic.show_line_diagnostics({ border = 'single' })<CR>",
		{ noremap = true, silent = true }
	)
end

M.attach = function(bufnr)
	setup_icons()
	setup_keymaps(bufnr)
end
return M
