local M = {}
M.run = function()
	local workspace_path = os.getenv("HOME") .. "/workspaces/java/learning-compilers"
	local startup_script = CONFIG_PATH .. "/bin/launch_jdtls.sh"

	local on_attach = function(client)
		require("core.lsp.common").format_on_attach(client)
		require("core.lsp.common").on_attach()
	end

	require("jdtls").start_or_attach({
		on_attach = on_attach,
		cmd = { startup_script, workspace_path },
	})
end

return M
