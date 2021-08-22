local clang = {}

clang.lsp = {
	cmd = { DATA_PATH .. "/lspinstall/cpp/clangd/bin/clangd" },
	provider = "clangd",
}

return clang
