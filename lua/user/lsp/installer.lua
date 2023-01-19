local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
	return
end

local server_formatting_blacklist = {
	"sumneko_lua",
  "rust_analyzer"
}

lsp_installer.on_server_ready(function(server)
	local opts = {
		on_attach = require("user.lsp.handlers").on_attach,
		capabilities = require("user.lsp.handlers").capabilities,
	}

	-- prevents other servers from interfering with the null-ls formatting
	for _, server_name in ipairs(server_formatting_blacklist) do
		if server.name == server_name then
			opts.on_attach = require("user.lsp.handlers").on_attach_no_format
		end
	end

	-- override default server settings
	if server.name == "sumneko_lua" then
		local sumneko_opts = require("user.lsp.settings.sumneko_lua")
		opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
	end

  if server.name == "solang" then
		local solang_opts = require("user.lsp.settings.solang")
		opts = vim.tbl_deep_extend("force", solang_opts, opts)
	end


	server:setup(opts)
end)
