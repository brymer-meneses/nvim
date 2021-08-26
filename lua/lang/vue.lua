local vue = {
	lsp = {
		provider = "vuels",
		cmd = { DATA_PATH .. "/lspinstall/vue/node_modules/.bin/vls", "--stdio" },
		root_dir = require("lspconfig").util.root_pattern(".git", "."),
	},
}

return { vue = vue }
