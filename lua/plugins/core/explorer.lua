vim.g.nvim_tree_git_hl = 1
vim.g.nvim_tree_root_folder_modifier = ":~:."
vim.cmd("let g:nvim_tree_show_icons = {'git': 0, 'folders': 1, 'files': 1}")

vim.api.nvim_set_keymap("n", "<leader>tt", ":NvimTreeToggle<cr>", { silent = true })
vim.api.nvim_set_keymap("n", "<leader>tr", ":NvimTreeRefresh<cr>", { silent = true })
vim.api.nvim_set_keymap("n", "<leader>tn", ":NvimTreeFindFile<cr>", { silent = true })

local tree_cb = require("nvim-tree.config").nvim_tree_callback

require("nvim-tree").setup({
	disable_netrw = true,
	hijack_netrw = true,
	open_on_setup = false,
	ignore_ft_on_setup = {},
	hide_dotfiles = true,
	ignore = { ".git", "node_modules", ".cache" },
	auto_close = false,
	open_on_tab = false,
	hijack_cursor = true,
	update_cwd = true,
	-- lsp_diagnostics = true,
	update_focused_file = {
		enable = true,
		update_cwd = true,
		ignore_list = {},
	},
	system_open = {
		cmd = nil,
		args = {},
	},
	filters = {
		dotfiles = false,
		custom = {},
	},
	update_focused_file = {
		enable = true,
		update_cwd = true,
	},
	view = {
		auto_resize = true,
		mappings = {
			custom_only = false,
			list = {
				{ key = { "l", "<Cr>", "<2-LeftMouse>", "o" }, cb = tree_cb("edit") },
				{ key = { "<2-RightMouse>", "<C-]>", "O" }, cb = tree_cb("cd") },
				{ key = "<C-v>", cb = tree_cb("vsplit") },
				{ key = "<C-x>", cb = tree_cb("split") },
				{ key = "<C-t>", cb = tree_cb("tabnew") },
				{ key = "<", cb = tree_cb("prev_sibling") },
				{ key = ">", cb = tree_cb("next_sibling") },
				{ key = "P", cb = tree_cb("parent_node") },
				{ key = "<BS>", cb = tree_cb("close_node") },
				{ key = "<S-CR>", cb = tree_cb("close_node") },
				{ key = "<Tab>", cb = tree_cb("preview") },
				{ key = "K", cb = tree_cb("first_sibling") },
				{ key = "J", cb = tree_cb("last_sibling") },
				{ key = "I", cb = tree_cb("toggle_ignored") },
				{ key = "H", cb = tree_cb("toggle_dotfiles") },
				{ key = "R", cb = tree_cb("refresh") },
				{ key = "a", cb = tree_cb("create") },
				{ key = "d", cb = tree_cb("remove") },
				{ key = "r", cb = tree_cb("rename") },
				{ key = "<C-r>", cb = tree_cb("full_rename") },
				{ key = "x", cb = tree_cb("cut") },
				{ key = "c", cb = tree_cb("copy") },
				{ key = "p", cb = tree_cb("paste") },
				{ key = "y", cb = tree_cb("copy_name") },
				{ key = "Y", cb = tree_cb("copy_path") },
				{ key = "gy", cb = tree_cb("copy_absolute_path") },
				{ key = "[c", cb = tree_cb("prev_git_item") },
				{ key = "]c", cb = tree_cb("next_git_item") },
				{ key = "<C-[>", cb = tree_cb("dir_up") },
				{ key = "q", cb = tree_cb("close") },
				{ key = "g?", cb = tree_cb("toggle_help") },
			},
		},
	},
})