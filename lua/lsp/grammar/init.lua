local readFiles = require("lsp.LanguageTool.ltex-ls")

local Dictionary_file = {
	["en-US"] = { CONFIG_PATH .. "/lua/lsp/LanguageTool/spell/dictionary.txt" },
}
local DisabledRules_file = {
	["en-US"] = { CONFIG_PATH .. "/lua/lsp/LanguageTool/spell/disable.txt" },
}
local FalsePositives_file = {
	["en-US"] = { CONFIG_PATH .. "/lua/lsp/LanguageTool/spell/false.txt" },
}

require("lspconfig").ltex.setup({
	cmd = { DATA_PATH .. "/lspinstall/LanguageTool/bin/ltex-ls" },
	filetypes = { "tex", "bib", "md" },
	on_attach = require("lsp").common_on_attach,

	settings = {
		ltex = {
			enabled = { "latex", "tex", "bib", "md" },
			checkFrequency = "save",
			language = O.language_tool.language,
			diagnosticSeverity = "information",
			setenceCacheSize = 5000,
			additionalRules = {
				enablePickyRules = true,
				motherTongue = O.language_tool.mother_tongue,
			},
			trace = { server = "verbose" },
			["ltex-ls"] = { logLevel = "finest" },
			dictionary = {
				[O.language_tool.language] = readFiles(Dictionary_file[O.language_tool.language] or {}),
			},
			disabledRules = {
				[O.language_tool.language] = readFiles(DisabledRules_file[O.language_tool.language] or {}),
			},
			hiddenFalsePositives = {
				[O.language_tool.language] = readFiles(FalsePositives_file[O.language_tool.language] or {}),
			},
		},
	},
})
