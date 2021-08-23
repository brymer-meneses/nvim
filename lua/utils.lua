local M = {}

function M.get_file_name()
	return vim.api.nvim_buf_get_name(0)
end

function M.init_packer()
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

	vim.cmd([[autocmd BufWritePost ~/.config/nvim/lua/plugins.lua :luafile % | PackerSync]])

	packer.init({
		git = { clone_timeout = 300 },
		display = {
			open_fn = function()
				return require("packer.util").float({ border = "single" })
			end,
			prompt_border = "single",
		},
		auto_clean = true,
	})
end
return M
