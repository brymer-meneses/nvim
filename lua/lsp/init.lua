
require("lang")

require("lsp.compe")
require("lsp.icons")
require("lsp.formatting")
require("lsp.handlers").setup()

local lspconfig = require("lspconfig")

local M = {}

function M.run(lang)
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
			value = require("lsp.common").on_attach,
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
end

return M
