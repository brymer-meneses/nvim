local javascript = {
	lsp = {
		provider = "tsserver",
		cmd = {
			DATA_PATH .. "/lspinstall/typescript/node_modules/.bin/typescript-language-server",
			"--stdio",
		},
		filetypes = {
			"javascript",
			"javascriptreact",
			"javascript.jsx",
			"typescript",
			"typescriptreact",
			"typescript.tsx",
		},
		root_dir = require("lspconfig/util").root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git"),
		on_attach = function(client)
			require("core.lsp.common").on_attach()
			require("core.lsp.common").format_on_attach(client)
			client.resolved_capabilities.document_formatting = false
		end,
		handlers = {
			["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
				virtual_text = false,
				signs = false,
				underline = true,
				update_in_insert = true,
			}),
		},
	},
}
return javascript
