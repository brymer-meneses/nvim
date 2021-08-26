local python = {
	lsp = {
		provider = "pyright",
		cmd = { DATA_PATH .. "/lspinstall/python/node_modules/.bin/pyright-langserver", "--stdio" },
		settings = {
			python = {
				analysis = {
					typeCheckingMode = true,
					autoSearchPaths = true,
					useLibraryCodeForTypes = true,
				},
			},
		},
	},
}

return { python = python }
