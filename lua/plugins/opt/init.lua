return {
	{ "LunarVim/vim-solidity" },
	-- { "github/copilot.vim" },
	{ "mfussenegger/nvim-jdtls" },
	{
		"lervag/vimtex",
		config = function()
			require("plugins.opt.vimtex")
		end,
		ft = "tex",
	},
	-- theme
	{
		"ThemerCorp/themer.lua",
		config = function()
			require("themer").setup({
				colorscheme = require("config").colorscheme,
			})
		end,
	},

	-- snippets
	{
		"L3MON4D3/LuaSnip",
		requires = "rafamadriz/friendly-snippets",
		config = function()
			require("plugins.opt.luasnip")
			-- require("luasnip/loaders/from_vscode").lazy_load({
			-- 	paths = {
			-- 		"~/.local/share/nvim/site/pack/packer/start/friendly-snippets",
			-- 		"~/.config/nvim/snippets",
			-- 	},
			-- })
		end,
	},
	-- { "qpkorr/vim-bufkill" },
}
