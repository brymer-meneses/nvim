local M = {}

function M.is_buffer_empty()
	-- Check whether the current buffer is empty
	return vim.fn.empty(vim.fn.expand("%:t")) == 1
end

function M.has_width_gt(cols)
	-- Check if the windows width is greater than a given number of columns
	return vim.fn.winwidth(0) / 2 > cols
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

	vim.cmd("autocmd BufWritePost ~/.config/nvim/lua/plugins.lua :luafile % | PackerSync")

	packer.init({
		git = { clone_timeout = 300 },
		display = {
			open_fn = function()
				return require("packer.util").float({ border = "rounded" })
			end,
		},
	})
end
return M
