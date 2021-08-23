local M = {}
M.border = {
	{ "🭽", "FloatBorder" },
	{ "▔", "FloatBorder" },
	{ "🭾", "FloatBorder" },
	{ "▕", "FloatBorder" },
	{ "🭿", "FloatBorder" },
	{ "▁", "FloatBorder" },
	{ "🭼", "FloatBorder" },
	{ "▏", "FloatBorder" },
}
M.setup = function()
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
	vim.cmd([[autocmd ColorScheme * highlight NormalFloat guibg=#1f2335]])
	vim.cmd([[autocmd ColorScheme * highlight FloatBorder guifg=white guibg=#1f2335]])
end

return M
