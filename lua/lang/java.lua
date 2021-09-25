local java = {
	lsp = {
		cmd = { "jdtls" },
		provider = "jdtls",
		on_attach = function(client)
			require("core.lsp.common").on_attach()
			require("core.lsp.common").format_on_attach(client)
		end,
		init_options = {
			jvm_args = {},
			workspace = "/home/brymer-meneses/workspaces/java/",
		},
	},
}

return java
