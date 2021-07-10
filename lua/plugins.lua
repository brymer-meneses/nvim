-- Installs packer.nvim if it is not installed on a system.
local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/packer/opt/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({
        'git', 'clone', 'https://github.com/wbthomason/packer.nvim',
        install_path
    })
    execute 'packadd packer.nvim'
end

local packer_ok, packer = pcall(require, "packer")
if not packer_ok then return end

vim.cmd(
    "autocmd BufWritePost ~/.config/nvim/lua/plugins.lua :luafile % | PackerSync")

packer.init {
    git = {clone_timeout = 300},
    display = {
        open_fn = function()
            return require("packer.util").float {border = "single"}
        end
    }
}

return require('packer').startup(function(use)

    -- Packer plugin to manage itself
    use 'wbthomason/packer.nvim'

    -- Formatting
    use 'mhartington/formatter.nvim'

    -- For comments
    use 'b3nj5m1n/kommentary'
    use {
        'norcalli/nvim-colorizer.lua',
        config = function() require('colorizer').setup() end
    }

    -- Change Director Dynamically
    use {"ahmedkhalf/lsp-rooter.nvim"}

    -- Nord Theme
    use "brymer-meneses/nord.nvim"
    use 'folke/tokyonight.nvim'
    use {"npxbr/gruvbox.nvim", requires = {"rktjmp/lush.nvim"}}

    use 'lervag/vimtex'

    -- Telescope
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'
    use "nvim-telescope/telescope-media-files.nvim"

    -- Treesitter
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

    -- File Explorer
    use 'kyazdani42/nvim-tree.lua'

    -- LSP
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-compe'
    use 'kabouzeid/nvim-lspinstall'

    -- Git integration
    use {'lewis6991/gitsigns.nvim', requires = {'nvim-lua/plenary.nvim'}}

    -- Statusline
    -- use {'famiu/feline.nvim', config = function() require 'plugins.feline' end}
    -- use {'itchyny/lightline.vim'}

    -- Startmenu
    use 'glepnir/dashboard-nvim'
    -- More icons
    use {'kyazdani42/nvim-web-devicons'}
    -- Bufferline
    use {
        'akinsho/nvim-bufferline.lua',
        requires = 'kyazdani42/nvim-web-devicons'
    }
    -- use {'lukas-reineke/indent-blankline.nvim', branch="lua"}
    use 'windwp/nvim-autopairs'

    -- use 'nvim-treesitter/playground'

    use 'akinsho/nvim-toggleterm.lua'

    -- use "jbyuki/nabla.nvim"
    use "p00f/nvim-ts-rainbow"

    -- LAGS
    -- use "norcalli/nvim-colorizer.lua"
    -- use {"christianchiarulli/nvcode-color-schemes.vim", opt = true}
    use "nvim-lua/lsp-status.nvim"
    -- use "cocopon/iceberg.vim"

    -- use {"ray-x/lsp_signature.nvim", opt = false}
    use {
        "folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim",
        config = function() require("todo-comments").setup {} end
    }
    -- Avoids plugin conflicts
    if O.colorscheme == "nord" then
        use "glepnir/galaxyline.nvim"
    else
        use "hoob3rt/lualine.nvim"
    end

    use 'JoosepAlviste/nvim-ts-context-commentstring'
    use {
        "karb94/neoscroll.nvim",
        opt = false,
        config = function() require('neoscroll').setup() end
    }

    use {"hrsh7th/vim-vsnip"}
    use {"rafamadriz/friendly-snippets"}
    use {"windwp/nvim-ts-autotag"}
    use {"pocco81/truezen.nvim", opt = false}
    use {
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons",
        config = function()
            require("trouble").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }
end)
