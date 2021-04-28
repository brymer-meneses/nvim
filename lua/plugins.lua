
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

    use {
	'glepnir/galaxyline.nvim',
	branch = 'main',
	requires = {'kyazdani42/nvim-web-devicons', opt = true}
	}

    -- Nord Theme
    use 'arcticicestudio/nord-vim'

    -- Lua LSP
    use 'tjdevries/nlua.nvim'
end)

-- Autocompile plugins when changing the plugins.lua file
-- vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile'
