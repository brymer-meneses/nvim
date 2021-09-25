local g = vim.g

-- g.vimtex_compiler_progname = "nvr"
g.vimtex_view_general_viewer = "evince"
g.tex_flavor = "latex"
-- g.vimtex_view_method = "evince"
g.vimtex_quickfix_mode = 0
-- g.tex_conceal = 'abdmg'
-- g.vimtex_compiler_engine = "lualatex"

local latex_augroup = {
	{ "FileType", "tex,plaintex", ":set conceallevel=1" },
	{ "FileType", "tex,plaintex", ":set spelllang=en_us" },
	{ "FileType", "tex,plaintex", "hi clear Conceal" },
	{ "FileType", "tex", ":nnoremap <leader>tp <cmd>VimtexCompile<CR>" },
	{ "FileType", "tex", ":nnoremap <leader>te <cmd>VimtexErrors<CR>" },
	{ "FileType", "tex", ":nnoremap <leader>tc <cmd>VimtexClean<CR>" },
}

require("core.lib.autocommands").define_augroup("latex", latex_augroup)
