-- https://github.com/sumneko/lua-language-server/wiki/Build-and-Run-(Standalone)
local sumneko_root_path = DATA_PATH .. "/lspinstall/lua"
local sumneko_binary = sumneko_root_path .. "/sumneko-lua-language-server"

local lang = nvim.lang
lang.lua = {
	lsp = {
		provider = "sumneko_lua",
		cmd = { sumneko_binary, "-E", sumneko_root_path .. "/main.lua" },
		settings = {
			Lua = {
				runtime = {
					version = "LuaJIT",
					path = vim.split(package.path, ";"),
				},
				diagnostics = {
					globals = { "vim" },
				},
				workspace = {
					library = vim.api.nvim_get_runtime_file("", true),
					maxPreload = 10000,
				},
				telemetry = {
					enable = false,
				},
			},
		},
	},
}
