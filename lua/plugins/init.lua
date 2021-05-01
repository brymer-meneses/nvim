
-- Installs packer.nvim if it is not installed on a system.

local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

return require('packer').startup(function()

    -- Packer plugin to manage itself
    use 'wbthomason/packer.nvim'

    use 'mhinz/vim-startify'

    -- For comments
    use 'preservim/nerdcommenter'


    -- Nord Theme
    use 'arcticicestudio/nord-vim'

    -- Lua LSP
    use 'tjdevries/nlua.nvim'
    use 'lervag/vimtex'

    -- Telescope
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'

    -- Treesitter
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    -- File Explorer 
    use 'kyazdani42/nvim-tree.lua'

    -- LSP
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-compe'
    use 'kabouzeid/nvim-lspinstall'

    -- Git integration
    use {
      'lewis6991/gitsigns.nvim',
      requires = {
        'nvim-lua/plenary.nvim'
      }
    }

    --use {'neoclide/coc.nvim', branch = 'release'}

    -- More icons
    use {'kyazdani42/nvim-web-devicons'}
    -- Bufferline
    use {"romgrk/barbar.nvim"}
    -- Statusline
    use {
        'hoob3rt/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt=true}
    }


end)

