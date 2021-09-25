local util = require("lspconfig/util")
require("lspconfig").grammar_guard.setup({
	on_attach = require("core.lsp.common").on_attach,
	capabilities = require("core.lsp.common").capabilities,
	root_dir = function(fname)
		return util.find_git_ancestor(fname) or util.path.dirname(fname)
	end,
	settings = {
		ltex = {
			enabled = { "latex", "tex", "bib", "markdown" },
			language = "en",
			diagnosticSeverity = "information",
			setenceCacheSize = 2000,
			additionalRules = {
				enablePickyRules = true,
				motherTongue = "en",
			},
			trace = { server = "verbose" },
			dictionary = {},
			disabledRules = {},
			hiddenFalsePositives = {},
		},
	},
})
