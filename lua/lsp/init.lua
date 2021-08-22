require("lsp.compe")

local M = {}

local lspconfig = require("lspconfig")
function M.run(lang)
	local lang_config = require("lang/" .. lang).lsp
	local lsp_utils = require("lsp.utils")

	if lsp_utils.is_client_active(lang_config.provider) then
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
			value = require("lsp.common").on_attach,
		},
	}
	for key, value in pairs(lang_config) do
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
	local server = lang_config.server_name

	print(setup.provider)
	lspconfig[server].setup(setup)
end

return M
