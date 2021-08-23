local M = {}
M.setup = function()
	require("lsp.compe")
	require("lsp.formatting")
	require("lsp.ui").setup()

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
end
M.run = function(lang)
	local lspconfig = require("lspconfig")
	require("lang/" .. lang)
	local lsp = nvim.lang[lang].lsp
	local lsp_utils = require("lsp.utils")

	local provider = lsp.provider

	if lsp_utils.is_client_active(provider) then
		return
	end

	local setup = {}
	for key, value in pairs(lsp) do
		setup[key] = value
	end

	local table_contains = require("utils").table_contains

	if not table_contains(setup, "on_attach") then
		setup.on_attach = require("lsp.common").on_attach
	end

	if not table_contains(setup, "capabilities") then
		setup.capabilities = require("lsp.common").capabilities
	end

	lspconfig[provider].setup(setup)
	vim.schedule(function()
		vim.api.nvim_exec("LspStart", false)
	end)
end

return M
