local lang = nvim.lang
lang.clang = {
	lsp = {
		cmd = { DATA_PATH .. "/lspinstall/cpp/clangd/bin/clangd" },
		provider = "clangd",
	},
}
