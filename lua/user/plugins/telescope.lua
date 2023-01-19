local actions = require("telescope.actions")
local fb_actions = require("telescope").extensions.file_browser.actions


require("telescope").setup({
	extensions = {
		media_files = {
			filetypes = { "png", "jpg", "pdf", "jpeg" },
		},
		file_browser = {
			initial_mode = "normal",
			previewer = false,
			theme = "dropdown",
			-- separate files from folders
			grouped = true,
			mappings = {
				["i"] = {},
				["n"] = {
					["h"] = fb_actions.goto_parent_dir,
					["<c-h>"] = fb_actions.toggle_hidden,
					["<c-l>"] = fb_actions.change_cwd,
					["l"] = actions.select_default,
				},
			},
		},
	},
	defaults = {
		mappings = {
			i = {
				["<C-l>"] = actions.select_default,
				["<C-j>"] = actions.move_selection_next,
				["<C-k>"] = actions.move_selection_previous,
				["<C-c>"] = actions.close,
				["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
				["<CR>"] = actions.select_default + actions.center,
			},
			n = {
				["l"] = actions.select_default,
				["<C-n>"] = actions.move_selection_next,
				["<C-p>"] = actions.move_selection_previous,
				["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
			},
		},
    file_ignore_patterns = { "node_modules" }
	},
})
require("telescope").load_extension("media_files")
require("telescope").load_extension("file_browser")

