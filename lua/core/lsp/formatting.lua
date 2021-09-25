local format_on_attach = require("core.lsp.common").format_on_attach
local formatter = require("null-ls").builtins.formatting
require("null-ls").config({
	sources = {
		formatter.stylua,
		formatter.prettierd,
		formatter.black,
		formatter.rustfmt,
	},
})
require("lspconfig")["null-ls"].setup({
	filetypes = { "*" },
	on_attach = format_on_attach,
})
