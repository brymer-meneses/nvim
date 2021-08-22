require("lsp.compe")
require("lsp.handlers").setup()
local lspconfig = require("lspconfig")

local M = {}

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
	local server = lang_config.provider

	lspconfig[server].setup(setup)
end

vim.lsp.protocol.CompletionItemKind = {
	"   (Text) ",
	"   (Method)",
	"   (Function)",
	"   (Constructor)",
	" ﴲ  (Field)",
	"[] (Variable)",
	"   (Class)",
	" ﰮ  (Interface)",
	"   (Module)",
	" 襁 (Property)",
	"   (Unit)",
	"   (Value)",
	" 練 (Enum)",
	"   (Keyword)",
	"   (Snippet)",
	"   (Color)",
	"   (File)",
	"   (Reference)",
	"   (Folder)",
	"   (EnumMember)",
	" ﲀ  (Constant)",
	" ﳤ  (Struct)",
	"   (Event)",
	"   (Operator)",
	"   (TypeParameter)",
}
return M
