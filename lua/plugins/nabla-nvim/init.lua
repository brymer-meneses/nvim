
local option = {silent = true, noremap=true}
vim.api.nvim_set_keymap("n", "<F5>", ":lua require('nabla').place_inline()<CR>", option)
