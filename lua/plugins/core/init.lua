local core_plugins = {
	-- package manager
	{ "wbthomason/packer.nvim" },
	-- bufferline
	{
		"akinsho/nvim-bufferline.lua",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("plugins.core.bufferline")
		end,
	},
	-- file explorer
	{
		"kyazdani42/nvim-tree.lua",
		config = function()
			require("plugins.core.explorer")
		end,
	},
	-- dashboard
	{
		"goolord/alpha-nvim",
		requires = { "kyazdani42/nvim-web-devicons" },
		config = function()
			require("plugins.core.dashboard")
		end,
	},
	-- theme
	{
		"themercorp/themer.lua",
		config = function()
			require("themer").setup({ colorscheme = "everforest" })
		end,
	},
	-- Git Integration
	{
		"lewis6991/gitsigns.nvim",
		requires = { "nvim-lua/plenary.nvim" },
		config = function()
			require("plugins.core.gitsigns")
		end,
	},
	-- Terminal
	{
		"akinsho/nvim-toggleterm.lua",
		config = function()
			require("plugins.core.toggleterm")
		end,
	},
	-- treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
		config = function()
			require("plugins.core.treesitter")
		end,
	},
	-- icons
	{ "kyazdani42/nvim-web-devicons" },
	-- completion
	{
		"hrsh7th/nvim-cmp",
		config = function()
			require("plugins.core.cmp")
		end,
		requires = {
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-path" },
			{ "kdheepak/cmp-latex-symbols" },
			{ "saadparwaiz1/cmp_luasnip" },
			-- fancy icons
			{ "onsails/lspkind-nvim" },
		},
	},
	-- statusline
	{
		"nvim-lualine/lualine.nvim",
		config = function()
			require("plugins.core.lualine")
		end,
	},
	-- snippets
	{
		"L3MON4D3/LuaSnip",
		requires = "rafamadriz/friendly-snippets",
		config = function()
			require("luasnip/loaders/from_vscode").lazy_load({
				paths = {
					"~/.local/share/nvim/site/pack/packer/start/friendly-snippets",
					"~/.config/nvim/snippets",
				},
			})
		end,
	},
	-- lsp configuration
	{ "neovim/nvim-lspconfig" },
	-- lsp installer
	{ "williamboman/nvim-lsp-installer" },
	{ "jose-elias-alvarez/null-ls.nvim" },
	-- treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
		config = function()
			require("plugins.core.treesitter")
		end,
	},
	{
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	},
	{
		"nvim-telescope/telescope.nvim",
		config = function()
			require("plugins.core.telescope")
		end,
		requires = {
			{ "nvim-telescope/telescope-media-files.nvim" },
			{ "nvim-lua/plenary.nvim" },
		},
	},
	{
		"ray-x/lsp_signature.nvim",
	},

	{
		"windwp/nvim-autopairs",
		config = function()
			require("plugins.core.autopairs")
		end,
	},
}

return core_plugins
