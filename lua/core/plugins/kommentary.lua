vim.g.kommentary_create_default_mappings = false

require("kommentary.config").configure_language("javascript", {
	hook_function = function()
		require("ts_context_commentstring.internal").update_commentstring()
	end,
})

require("kommentary.config").configure_language("default", {
	prefer_single_line_comments = true,
})
