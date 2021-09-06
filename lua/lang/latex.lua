local latex = {
	lsp = {
		provider = "texlab",
		cmd = { "texlab" },

		filetypes = { "plaintex", "bib", "tex" },
		settings = {
			chktex = {
				onOpenAndSave = true,
				onEdit = true,
			},
			build = {
				onSave = true,
			},
			forwardSearch = {
				executable = "zathura",
			},
		},
	},
}

return latex
