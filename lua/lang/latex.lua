local latex = {
	lsp = {
		provider = "texlab",
		cmd = { "texlab" },

		filetypes = { "plaintex", "bib", "tex" },
		settings = {
			texlab = {
				chktex = {
					onOpenAndSave = true,
					onEdit = true,
				},
				build = {
					onSave = false,
				},
				forwardSearch = {
					executable = "zathura",
				},
				latexFormatter = "latexindent",
			},
		},
	},
}

return latex
