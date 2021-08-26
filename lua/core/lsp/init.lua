require("core.lsp.ui")

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

local M = {}
M.run = function(lang)
	local lspconfig = require("lspconfig")
	require("lang/" .. lang)
	local config = require("lang/" .. lang)
	local lsp = config.lsp

	table.insert(nvim.lang, config.lsp)
	local lsp_utils = require("core.lsp.utils")

	local provider = lsp.provider

	if lsp_utils.is_client_active(provider) then
		return
	end

	local setup = {}
	for key, value in pairs(lsp) do
		setup[key] = value
	end

	local table_contains = require("core.utils").table_contains

	for _, value in ipairs({ "on_attach", "capabilities" }) do
		if not table_contains(setup, value) then
			setup[value] = require("core.lsp.common")[value]
		end
	end
	lspconfig[provider].setup(setup)
	vim.schedule(function()
		vim.api.nvim_exec("LspStart", false)
	end)
end

return M
