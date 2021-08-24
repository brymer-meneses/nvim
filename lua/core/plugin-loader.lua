-- Installs packer.nvim if it is not installed on a system.
local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/opt/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
	fn.system({
		"git",
		"clone",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	execute("packadd packer.nvim")
end

local packer_ok, packer = pcall(require, "packer")
if not packer_ok then
	return
end

packer.init({
	git = { clone_timeout = 1000 },
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "single" })
		end,
		prompt_border = "single",
	},
	auto_clean = true,
})

local table_contains = require("core.utils").table_contains
return packer.startup(function(use)
	for _, plugin in ipairs(nvim.core_plugins) do
		use(plugin)
	end

	if table_contains(nvim, "plugins") then
		for _, plugin in ipairs(nvim.plugins) do
			use(plugin)
		end
	end
end)
