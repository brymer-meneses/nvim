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
	local common = {
		on_attach = {
			enabled = false,
			value = require("lsp.common").on_attach,
		},
		capabilities = {
			enabled = false,
			value = require("lsp.common").capabilities,
		},
	}
	for key, value in pairs(lsp) do
		-- Check if common settings are in the language
		-- configuration
		for param, enabled in pairs(common) do
			if key == param then
				common[param].enabled = enabled
			end
		end

		setup[key] = value
	end
	-- Attach common params if not configured
	for setting, value in pairs(common) do
		if value.enabled then
			setup[setting] = value
		end
	end
	-- Add to lspconfig
	lspconfig[provider].setup(setup)
	vim.schedule(function()
		vim.api.nvim_exec("LspStart", false)
	end)
end

return M
