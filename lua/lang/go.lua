-- sudo pacman -S gopls
local go = {
	lsp = {
		cmd = { "gopls" },
		provider = "gopls",
		on_attach = function(client)
			require("core.lsp.common").on_attach()
			require("core.lsp.common").format_on_attach(client)
		end,
	},
}

return go
