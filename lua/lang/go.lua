-- sudo pacman -S gopls
local go = {
	lsp = {
		cmd = { "gopls" },
		provider = "gopls",
	},
}

return go
