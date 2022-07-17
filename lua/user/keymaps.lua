
-- stylua: ignore start

-- // CORE KEYMAPS //

local opts = { noremap = true, silent = true }

-- Leader Key
vim.g.mapleader = " "

vim.keymap.set("n", "<Space>", "<NOP>", opts)

-- Window Navigation
vim.keymap.set("n", "<c-j>", "<C-w>j", opts)
vim.keymap.set("n", "<c-h>", "<C-w>h", opts)
vim.keymap.set("n", "<c-k>", "<C-w>k", opts)
vim.keymap.set("n", "<c-l>", "<C-w>l", opts)

--- SPLITS
vim.keymap.set("n", "<c-RIGHT>", "<cmd>vsplit<cr>", { noremap = false })                   -- veritical split
vim.keymap.set("n", "<c-DOWN>", "<cmd>split<cr>", { noremap = false })                    -- horizontal split
vim.keymap.set("n", "<c-x>", "<C-w>q", opts)                                              -- delete split

-- Better indentin
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- Move selected line / block of text in visual mode
vim.keymap.set("x", "K", "<cmd>move '<-2<CR>gv-gv", opts)
vim.keymap.set("x", "J", "<cmd>move '>+1<CR>gv-gv", opts)

-- Resize Windows
vim.keymap.set("n", "<M-j>", "<cmd>resize -2<CR>", opts)
vim.keymap.set("n", "<M-k>", "<cmd>resize +2<CR>", opts)
vim.keymap.set("n", "<M-h>", "<cmd>vertical resize -2<CR>", opts)
vim.keymap.set("n", "<M-l>", "<cmd>vertical resize +2<CR>", opts)

-- Better saving
vim.keymap.set({ "n", "i", "v" }, "<C-s>", "<cmd>w<CR>", opts)


-- // PLUGIN KEYMAPS //

-- File Browser
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope file_browser<cr>", opts)

-- Telescope
vim.keymap.set("n", "<leader>fl", "<cmd>Telescope live_grep<cr>", opts)
-- vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opts)
-- vim.keymap.set("n", "<leader>fg", "<cmd>Telescope git_files<cr>", opts)
vim.keymap.set("n", "<leader>fm", "<cmd>Telescope media_files<cr>", opts)
-- vim.keymap.set("n", "<leader>fe", "<cmd>Telescope quickfix<cr>", opts)
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts)
vim.keymap.set("n", "<leader>fh", "<cmd>Telescope current_buffer_fuzzy_find fuzzy=false case_mode=ignore_case<cr>", opts)

-- Tree
vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", opts)

vim.keymap.set("n", "<Tab>b", "<cmd>bd<Cr>", opts)

-- Git Signs
local gs = require("gitsigns")
local gsa = require("gitsigns.actions")

vim.keymap.set("n", "[c", function() gsa.next_hunk() end, opts)
vim.keymap.set("n", "]c", function() gsa.prev_hunk() end, opts)
vim.keymap.set("n", "<leader>hs", function() gs.stage_hunk() end, opts)
vim.keymap.set("v", "<leader>hs", function() gs.stage_hunk({vim.fn.line("."), vim.fn.line("v")}) end, opts)
vim.keymap.set("n", "<leader>hu", function() gs.undo_stage_hunk() end, opts)
vim.keymap.set("n", "<leader>hr", function() gs.reset_hunk() end, opts)
vim.keymap.set("v", "<leader>hr", function() gs.reset_hunk({ vim.fn.line("."), vim.fn.line("v") }) end, opts)
vim.keymap.set("n", "<leader>hR", function() gs.reset_buffer() end, opts)
vim.keymap.set("n", "<leader>hp", function() gs.preview_hunk() end, opts)
vim.keymap.set("n", "<leader>hb", function() gs.blame_line(true) end, opts)
vim.keymap.set("n", "<leader>hS", function() gs.stage_buffer() end, opts)
vim.keymap.set("n", "<leader>hU", function() gs.reset_buffer_index() end, opts)

-- Hop
vim.api.nvim_set_keymap('', 'f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>", {})
vim.api.nvim_set_keymap('', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>", {})
vim.api.nvim_set_keymap('', 't', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })<cr>", {})
vim.api.nvim_set_keymap('', 'T', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })<cr>", {})

-- Dap
vim.keymap.set("n", "<leader>b", function () require"dap".toggle_breakpoint() end, opts)
vim.keymap.set("n", "<leader>c", function () require"dap".continue() end, opts)
vim.keymap.set("n", "<leader>s", function () require"dap".step_over() end, opts)
vim.keymap.set("n", "<leader>S", function () require"dap".step_into() end, opts)
vim.keymap.set("n", "<leader>i", function () require"dap".repl_open() end, opts)

-- Jabs
vim.keymap.set("n", "<tab>e", "<cmd>JABSOpen<cr>", opts)

