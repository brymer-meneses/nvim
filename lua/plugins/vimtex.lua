local g = vim.g

-- g.vimtex_compiler_progname = "nvr"
g.vimtex_view_general_viewer = "zathura"
g.tex_flavor = "latex"
g.vimtex_view_method = "zathura"
g.vimtex_quickfix_mode = 0
-- g.tex_conceal = 'abdmg'
g.vimtex_compiler_engine = "lualatex"

local latex_augroup = {
	{ "FileType", "tex,plaintex", ":set conceallevel=1" },
	{ "FileType", "tex,plaintex", ":set spelllang=en_us" },
	{ "FileType", "tex,plaintex", "hi clear Conceal" },
	{ "FileType", "tex,plaintex", ":nnoremap <leader>tp <cmd>VimtexCompile<CR>" },
	{ "FileType", "tex,plaintex", ":nnoremap <leader>te <cmd>VimtexErrors<CR>" },
}

require("core.lib.autocommands").define_augroup("latex", latex_augroup)
