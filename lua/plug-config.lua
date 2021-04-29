
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
    use 'vim-airline/vim-airline'

    -- For comments
    use 'preservim/nerdcommenter'

    --use {
        --'glepnir/galaxyline.nvim',
        --branch = 'main',
        --requires = {'kyazdani42/nvim-web-devicons', opt = true}
    --}

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

    -- Git integration
    use {"lewis6991/gitsigns.nvim", opt = true}
    use {"romgrk/barbar.nvim", opt = true}

    use {"kabouzeid/nvim-lspinstall", opt = true}
    use {'neoclide/coc.nvim', branch = 'release'}

end)


