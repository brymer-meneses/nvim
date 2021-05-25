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

local use = require('packer').use

return require('packer').startup(function()

    -- Packer plugin to manage itself
    use 'wbthomason/packer.nvim'

    -- For comments
    -- use 'preservim/nerdcommenter'
    use 'b3nj5m1n/kommentary'

    -- Change Director Dynamicall
    use {"ahmedkhalf/lsp-rooter.nvim"}

    -- Nord Theme
    use "shaunsingh/nord.nvim"
    use 'folke/tokyonight.nvim'
    use {"npxbr/gruvbox.nvim", requires = {"rktjmp/lush.nvim"}}

    -- Lua LSP
    use 'tjdevries/nlua.nvim'
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
    --use "nvim-lua/completion-nvim"

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
    -- use {"romgrk/barbar.nvim"}
    use {
        'akinsho/nvim-bufferline.lua',
        requires = 'kyazdani42/nvim-web-devicons'
    }
    -- use {'lukas-reineke/indent-blankline.nvim', branch="lua"}
    use 'windwp/nvim-autopairs'

    use 'nvim-treesitter/playground'

    use 'akinsho/nvim-toggleterm.lua'

    use "jbyuki/nabla.nvim"
    use "p00f/nvim-ts-rainbow"
    use "norcalli/nvim-colorizer.lua"
    use "mhartington/formatter.nvim"
    use "nvim-lua/lsp-status.nvim"
    use "cocopon/iceberg.vim"

    -- Avoids plugin conflicts
    if O.colorscheme == "nord" then
        use "glepnir/galaxyline.nvim"
    else 
        use "hoob3rt/lualine.nvim"
    end

end)

