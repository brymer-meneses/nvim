local latex = {}
latex.lsp = {
	provider = "texlab",
	cmd = { DATA_PATH .. "/lspinstall/latex/texlab" },
	settings = {
		texlab = {
			--[[ build = {
                isContinuous = true,
            }, ]]
			chktex = {
				onEdit = true,
				onOpenAndSave = false,
			},
			--[[ formatterLineLength = 100,
            forwardSearch = {
                executable = "zathura",
            } ]]
		},
	},
}

return latex
