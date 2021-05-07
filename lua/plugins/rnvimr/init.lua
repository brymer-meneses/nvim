-- Make Ranger replace netrw and be the file explorer
vim.g.rnvimr_ex_enable = 1
vim.g.rnvimr_draw_border = 1
vim.g.rnvimr_pick_enable = 1
vim.g.rnvimr_bw_enable = 1
vim.g.rnvimr_shadow_winblend = 70
vim.g.rnvimr_ranger_cmd = 'ranger --cmd="set draw_borders both"'

vim.api.nvim_set_keymap('n', '-', ':RnvimrToggle<CR>',
                        {noremap = true, silent = true})

