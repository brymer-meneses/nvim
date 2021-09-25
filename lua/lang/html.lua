local html = {
	lsp = {
		cmd = {
			"node",
			DATA_PATH .. "/lspinstall/html/vscode-html/html-language-features/server/dist/node/htmlServerMain.js",
			"--stdio",
		},
		provider = "html",
	},
}

return html
