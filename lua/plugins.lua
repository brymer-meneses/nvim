require("utils").init_packer()
return require("packer").startup(function(use)
	-- Packer plugin to manage itself
	use("wbthomason/packer.nvim")

	-- Formatting
	use("mhartington/formatter.nvim")

	-- For comments
	use("b3nj5m1n/kommentary")
	use({
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup()
		end,
	})

	-- Change Director Dynamically
	use({ "ahmedkhalf/lsp-rooter.nvim" })

	-- Nord Theme
	use("brymer-meneses/nord.nvim")
	use("folke/tokyonight.nvim")
	use({ "npxbr/gruvbox.nvim", requires = { "rktjmp/lush.nvim" } })

	use("lervag/vimtex")

	-- Telescope
	use("nvim-lua/popup.nvim")
	use("nvim-lua/plenary.nvim")
	use("nvim-telescope/telescope.nvim")
	use("nvim-telescope/telescope-media-files.nvim")

	-- Treesitter
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })

	-- File Explorer
	use("kyazdani42/nvim-tree.lua")

	-- LSP
	use("neovim/nvim-lspconfig")
	use("hrsh7th/nvim-compe")
	use("kabouzeid/nvim-lspinstall")

	-- Git integration
	use({ "lewis6991/gitsigns.nvim", requires = { "nvim-lua/plenary.nvim" } })

	-- Startmenu
	use("glepnir/dashboard-nvim")
	-- More icons
	use({ "kyazdani42/nvim-web-devicons" })
	-- Bufferline
	use({
		"akinsho/nvim-bufferline.lua",
		requires = "kyazdani42/nvim-web-devicons",
	})
	use("windwp/nvim-autopairs")
	use("akinsho/nvim-toggleterm.lua")

	use("p00f/nvim-ts-rainbow")

	use("nvim-lua/lsp-status.nvim")

	use({
		"folke/todo-comments.nvim",
		requires = "nvim-lua/plenary.nvim",
		config = function()
			require("todo-comments").setup({})
		end,
	})
	use({
		"hoob3rt/lualine.nvim",
		opt = false,
	})

	use("JoosepAlviste/nvim-ts-context-commentstring")
	use({
		"karb94/neoscroll.nvim",
		opt = false,
		config = function()
			require("neoscroll").setup()
		end,
	})

	use({ "hrsh7th/vim-vsnip" })
	use({ "rafamadriz/friendly-snippets" })
	use({ "windwp/nvim-ts-autotag" })
	use({ "pocco81/truezen.nvim", opt = false })
	use({
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("trouble").setup({})
		end,
	})
end)
