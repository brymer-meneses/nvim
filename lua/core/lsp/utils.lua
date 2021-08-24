local M = {}

function M.is_client_active(name)
	local clients = vim.lsp.get_active_clients()
	for _, client in pairs(clients) do
		if client.name == name then
			return true, client
		end
	end
	return false
end

function M.reload_on_install()
	-- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim
	require("lspinstall").post_install_hook = function()
		vim.cmd("bufdo e") -- this triggers the FileType autocmd that starts the server
	end
end

return M
