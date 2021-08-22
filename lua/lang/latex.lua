local lang = nvim.lang
lang.latex = {
	lsp = {
		provider = "texlab",
		cmd = { DATA_PATH .. "/lspinstall/latex/texlab" },
	},
}
