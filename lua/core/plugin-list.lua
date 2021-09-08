return {
	--package manager
	{ "wbthomason/packer.nvim" },
	-- comment handler
	{
		"b3nj5m1n/kommentary",
		config = function()
			require("core.plugins.kommentary")
		end,
	},
	-- colorscheme
	{
		"brymer-meneses/nord.nvim",
		config = function()
			vim.g.nord_borders = true
			vim.g.nord_contrast = false
			require("core.colorscheme")
		end,
	},
	-- file tree
	{
		"kyazdani42/nvim-tree.lua",
		config = function()
			require("core.plugins.tree")
		end,
	},
	-- completion
	{
		"hrsh7th/nvim-cmp",
		config = function()
			require("core.lsp.cmp")
		end,
		requires = {
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-path" },
			{ "kdheepak/cmp-latex-symbols" },
			{ "quangnguyen30192/cmp-nvim-ultisnips" },
			{ "onsails/lspkind-nvim" },
		},
	},
	-- lsp
	{
		"glepnir/lspsaga.nvim",
		config = function()
			vim.schedule(function()
				require("core.lsp.saga").init_lsp_saga()
				require("core.lsp.saga").load_saga_colors()
			end)
		end,
	},
	{
		"kabouzeid/nvim-lspinstall",
		config = function()
			require("core.lsp.utils").reload_on_install()
		end,
	},
	{
		"ray-x/lsp_signature.nvim",
	},
	-- statusline
	{
		"glepnir/galaxyline.nvim",
		config = function()
			require("core.plugins.galaxyline")
		end,
	},
	-- telescope
	{
		"nvim-telescope/telescope.nvim",
		config = function()
			require("core.plugins.telescope")
		end,
		requires = {
			{ "nvim-telescope/telescope-media-files.nvim" },
			{ "nvim-lua/plenary.nvim" },
		},
	},
	{
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup()
		end,
	},
	-- Git integration
	{
		"lewis6991/gitsigns.nvim",
		requires = { "nvim-lua/plenary.nvim" },
		config = function()
			require("core.plugins.gitsigns")
		end,
	},
	-- formatting
	{
		"jose-elias-alvarez/null-ls.nvim",
		config = function()
			require("core.lsp.formatting")
		end,
	},

	{ "kyazdani42/nvim-web-devicons" },
	{
		"windwp/nvim-autopairs",
		config = function()
			require("core.plugins.autopairs")
		end,
	},
	{
		"akinsho/nvim-bufferline.lua",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("core.plugins.bufferline")
		end,
	},
	-- toggleterm
	{
		"akinsho/nvim-toggleterm.lua",
		config = function()
			require("core.plugins.toggleterm")
		end,
	},
	-- lspconfig
	{ "neovim/nvim-lspconfig" },
	-- treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
		config = function()
			require("core.plugins.treesitter")
		end,
	},
	-- dashboard
	{
		"glepnir/dashboard-nvim",
		config = function()
			require("core.plugins.dashboard")
		end,
	},
	-- snippets
	{
		"SirVer/ultisnips",
		config = function()
			vim.g.UltiSnipsRemoveSelectModeMappings = 0
			vim.g.UltiSnipsSnippetsDirectories = { CONFIG_PATH .. "snippet/" }
		end,
		requires = "honza/vim-snippets",
		opt = false,
	},
}
