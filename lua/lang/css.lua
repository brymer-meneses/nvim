local css = {
	lsp = {
		cmd = {
			"node",
			DATA_PATH .. "/lspinstall/css/vscode-css/css-language-features/server/dist/node/cssServerMain.js",
			"--stdio",
		},
		provider = "cssls",
	},
}

return { css = css }
