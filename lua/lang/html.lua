local html = {
	lsp = {
		cmd = {
			"node",
			DATA_PATH .. "/lspinstall/html/vscode-html/html-language-features/server/dist/node/htmlServerMain.js",
			"--stdio",
		},
		server_name = "html",
	},
}

return html
