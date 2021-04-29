
-- Installs packer.nvim if it is not installed on a system.

local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end


-- Change default installation path of packer plugins 
-- https://github.com/wbthomason/packer.nvim
local packer = nil 
local function init()
    if packer == nil then 
        packer = require('packer')
        packer.init({ package_root = util.join_paths(vim.fn.stdpath('config'), '.installed-plugins') })
    end 

    local use = packer.use
    packer.reset()

    -- Packer plugin to manage itself
    use 'wbthomason/packer.nvim'

    use 'mhinz/vim-startify'
    -- use 'vim-airline/vim-airline'

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
end

local plugins = setmetatable({}, {
  __index = function(_, key)
    init()
    return packer[key]
  end
})

return plugins

