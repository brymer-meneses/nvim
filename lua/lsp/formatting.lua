local format_on_attach = function(client)
	if client.resolved_capabilities.document_formatting then
		vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
	end
end

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
