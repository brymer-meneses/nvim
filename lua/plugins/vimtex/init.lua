
local g = vim.g

g.vimtex_compiler_progname = "nvr"
g.vimtex_view_general_viewer = "zathura"
g.tex_flavor='latex'
g.vimtex_view_method='zathura'
g.vimtex_quickfix_mode=0
g.tex_conceal='abdmg'
g.vimtex_compiler_engine = "lualatex"

vim.cmd([[
    augroup latex 
        autocmd! 
        autocmd FileType tex :set conceallevel=1
        autocmd FileType tex :set spell
        autocmd FileType tex :set spelllang=en_us
        autocmd FileType tex :hi clear Conceal
    augroup END
        ]])
vim.api.nvim_set_keymap("n", "<Tab>p", ":VimtexCompile<CR>", {noremap = true, silent = true})

