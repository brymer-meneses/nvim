local config = { noremap = true, silent = true }

vim.g.mapleader = " "

vim.keymap.set("n", "<Space>", "<NOP>")
-- vim.api.nvim_set_keymap("n", "<Space>", "<NOP>", { noremap = true, silent = true })

-- Leader Key

-- Window Navigation
vim.keymap.set("n", "<c-j>", "<C-w>j", config)
vim.keymap.set("n", "<c-h>", "<C-w>h", config)
vim.keymap.set("n", "<c-k>", "<C-w>k", config)
vim.keymap.set("n", "<c-l>", "<C-w>l", config)

-- Split
--- vertical split
vim.keymap.set("n", "<c-e>", ":vsplit<cr>", config)
--- horizontal split
vim.keymap.set("n", "<c-r>", ":split<cr>", { noremap = false })
--- remove split
vim.keymap.set("n", "<c-p>", "<C-w>q", config)

-- Better indentin
vim.keymap.set("v", "<", "<gv", config)
vim.keymap.set("v", ">", ">gv", config)

-- Move selected line / block of text in visual mode
vim.keymap.set("x", "K", "<cmd>move '<-2<CR>gv-gv", config)
vim.keymap.set("x", "J", "<cmd>move '>+1<CR>gv-gv", config)

-- Resize Windows

vim.keymap.set("n", "<M-j>", "<cmd>resize -2<CR>", config)
vim.keymap.set("n", "<M-k>", "<cmd>resize +2<CR>", config)
vim.keymap.set("n", "<M-h>", "<cmd>vertical resize -2<CR>", config)
vim.keymap.set("n", "<M-l>", "<cmd>vertical resize +2<CR>", config)

-- better saving
vim.keymap.set({ "n", "i", "v" }, "<C-s>", "<cmd>w<CR>", config)

vim.keymap.set("n", "<leader>n", "<cmd>noh<cr>", config)
vim.keymap.set("n", "<Tab>m", "<cmd>BufferLineCycleNext<CR>", config)
vim.keymap.set("n", "<Tab>n", "<cmd>BufferLineCyclePrev<CR>", config)
vim.keymap.set("n", "<Tab>b", "<cmd>bd<Cr>", config)

-- Telescope keymaps
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", config)
vim.keymap.set("n", "<leader>fl", "<cmd>Telescope live_grep<cr>", config)
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", config)
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope help_tags<cr>", config)
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope git_files<cr>", config)
vim.keymap.set("n", "<leader>fm", "<cmd>Telescope media_files<cr>", config)
vim.keymap.set("n", "<leader>fe", "<cmd>Telescope quickfix<cr>", config)
vim.keymap.set("n", "<leader>e", "<cmd>Telescope file_browser<cr>", config)

-- Git Signs Keymaps
vim.keymap.set("n", "[c", function()
	require("gitsigns.actions").next_hunk()
end, config)
vim.keymap.set("n", "]c", function()
	require("gitsigns.actions").prev_hunk()
end, config)

vim.keymap.set("n", "<leader>hs", '<cmd>lua require"gitsigns".stage_hunk()<CR>', config)
vim.keymap.set(
	"v",
	"<leader>hs",
	'<cmd>lua require"gitsigns".stage_hunk({vim.fn.line("."), vim.fn.line("v")})<CR>',
	config
)

vim.keymap.set("n", "<leader>hu", function()
	require("gitsigns").undo_stage_hunk()
end, config)

vim.keymap.set("n", "<leader>hr", function()
	require("gitsigns").reset_hunk()
end, config)

vim.keymap.set("v", "<leader>hr", function()
	require("gitsigns").reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
end, config)

vim.keymap.set("n", "<leader>hR", function()
	require("gitsigns").reset_buffer()
end, config)

vim.keymap.set("n", "<leader>hp", function()
	require("gitsigns").preview_hunk()
end, config)

vim.keymap.set("n", "<leader>hb", function()
	require("gitsigns").blame_line(true)
end, config)

vim.keymap.set("n", "<leader>hS", function()
	require("gitsigns").stage_buffer()
end, config)

vim.keymap.set("n", "<leader>hU", function()
	require("gitsigns").reset_buffer_index()
end, config)
