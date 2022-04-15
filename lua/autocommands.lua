local vimtex = vim.api.nvim_create_augroup("vimtex", { clear = true })

vim.api.nvim_create_autocmd("FileType", {
	group = vimtex,
	pattern = { "tex", "plaintex" },
	callback = function()
		vim.schedule(function()
			local opts = { silent = true, noremap = true }
			vim.keymap.set("n", "<leader>tp", "<cmd>VimtexCompile<cr>", opts)
			vim.keymap.set("n", "<leader>te", "<cmd>VimtexErrors<cr>", opts)
			vim.keymap.set("n", "<leader>tc", "<cmd>VimtexClean<cr>", opts)
		end)
	end,
})
-- clean compiler build files when leaving
vim.api.nvim_create_autocmd("User", {
	group = vimtex,
	pattern = "VimtexEventQuit",
	command = "call vimtex#compiler#clean(0)",
})
