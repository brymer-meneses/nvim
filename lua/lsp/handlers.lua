local M = {}

local border = {
	{ "🭽", "FloatBorder" },
	{ "▔", "FloatBorder" },
	{ "🭾", "FloatBorder" },
	{ "▕", "FloatBorder" },
	{ "🭿", "FloatBorder" },
	{ "▁", "FloatBorder" },
	{ "🭼", "FloatBorder" },
	{ "▏", "FloatBorder" },
}
function M.setup()
	vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
		signs = {
			active = true,
			values = {
				{ name = "LspDiagnosticsSignError", text = "" },
				{ name = "LspDiagnosticsSignWarning", text = "" },
				{ name = "LspDiagnosticsSignHint", text = "" },
				{ name = "LspDiagnosticsSignInformation", text = "" },
			},
		},
		virtual_text = false,
		underline = true,
		update_in_insert = true,
		severity_sort = true,
	})
	vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
		border = border,
	})

	vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
		border = border,
	})
end

return M
