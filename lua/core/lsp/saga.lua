local M = {}
M.init_lsp_saga = function()
	local saga = require("lspsaga")
	saga.init_lsp_saga({
		error_sign = "",
		warn_sign = "",
		hint_sign = "",
		infor_sign = "",
		dianostic_header_icon = "   ",
		code_action_icon = " ",
		code_action_prompt = {
			enable = true,
			sign = true,
			sign_priority = 20,
			virtual_text = true,
		},
		finder_definition_icon = "  ",
		finder_reference_icon = "  ",
		max_preview_lines = 10, -- preview lines of lsp_finder and definition preview
		finder_action_keys = {
			open = "o",
			vsplit = "s",
			split = "i",
			quit = "q",
			scroll_down = "<C-f>",
			scroll_up = "<C-b>", -- quit can be a table
		},
		code_action_keys = {
			quit = "q",
			exec = "<CR>",
		},
		rename_action_keys = {
			quit = "<C-c>",
			exec = "<CR>", -- quit can be a table
		},
		definition_preview_icon = "  ",
		border_style = "single",
		rename_prompt_prefix = "➤",
	})
end

M.load_saga_colors = function()
	vim.api.nvim_exec(
		[[
    highlight LspSagaDiagnosticBorder guifg=#D8DEE9 guibg=#434C5E
    highlight LspSagaDiagnosticTruncateLine guifg=#D8DEE9
    ]],
		false
	)
end

M.load_saga_bindings = function(bufnr)
	local opts = { noremap = true, silent = true }
	vim.api.nvim_buf_set_keymap(
		bufnr,
		"n",
		"<Tab><Tab>",
		"<cmd>lua require'lspsaga.diagnostic'.show_line_diagnostics()<CR>",
		opts
	)
	vim.api.nvim_buf_set_keymap(
		bufnr,
		"n",
		"<Tab>k",
		"<cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_prev()<CR>",
		opts
	)
	vim.api.nvim_buf_set_keymap(
		bufnr,
		"n",
		"<Tab>j",
		"<cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_next()<CR>",
		opts
	)
end
return M
--[[
LspSagaDiagnosticBorder xxx guifg=#7739e3
LspSagaDiagnosticHeader xxx gui=bold guifg=#d8a657
LspSagaDiagnosticTruncateLine xxx guifg=#7739e3
LspDiagnosticsFloatingWarn xxx guifg=#d8a657
LspDiagnosticsFloatingInfor xxx guifg=#6699cc
LspSagaShTruncateLine xxx guifg=black
LspSagaDocTruncateLine xxx guifg=black
LspSagaCodeActionTitle xxx guifg=#5E81AC
LspSagaCodeActionTruncateLine xxx guifg=black
LspSagaCodeActionContent xxx guifg=#81A1C1
LspSagaRenamePromptPrefix xxx guifg=#98be65
LspSagaRenameBorder xxx guifg=#A3BE8C
LspSagaHoverBorder xxx guifg=#5E81AC
LspSagaSignatureHelpBorder xxx guifg=#EBCB8B
LspSagaLspFinderBorder xxx guifg=#51afef
LspSagaCodeActionBorder xxx guifg=#8FBCBB
LspSagaAutoPreview xxx guifg=#ECBE7B
LspSagaDefPreviewBorder xxx guifg=#A3BE8C
LspSagaLightBulb xxx links to LspDiagnosticsSignHint
 ]]
