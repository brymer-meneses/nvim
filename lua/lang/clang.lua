local clang = {}

clang.lsp = {
		cmd = { DATA_PATH .. "/lspinstall/cpp/clangd/bin/clangd" },
		handlers = {
			["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
				virtual_text = O.clang.diagnostics.virtual_text,
				signs = O.clang.diagnostics.signs,
				underline = O.clang.diagnostics.underline,
				update_in_insert = true,
			}),
		},
		provider = "clangd",
	},


return clang
