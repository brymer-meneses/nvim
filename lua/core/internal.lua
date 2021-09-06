nvim = {
	lang = {},
	core_plugins = require("core.plugin-list"),
	autocommands = {
		_general_settings = {
			-- disable autocomments
			{ "BufRead", "*", "setlocal formatoptions-=c formatoptions-=r formatoptions-=o" },
			{ "BufNewFile", "*", "setlocal formatoptions-=c formatoptions-=r formatoptions-=o" },
			{ "BufWinEnter", "*", "setlocal formatoptions-=c formatoptions-=r formatoptions-=o" },
			{ "FileType", "qf", "nnoremap <silent> <buffer> q :q<CR>" },
		},
		_cursorline = {
			{ "VimEnter,WinEnter,BufWinEnter", "*", "setlocal cursorline" },
			{ "WinLeave", "*", "setlocal nocursorline" },
		},
		_general_lsp = {
			{ "FileType", "lspinfo", "nnoremap <silent> <buffer> q :q<CR>" },
			{ "FileType", "*", "nnoremap <silent> <buffer> <M-l> :LspInfo<CR>" },
		},
		_colorscheme = {
			{ "ColorScheme", "*", "highlight NormalFloat guibg=#2E3440" },
			{ "ColorScheme", "*", "highlight FloatBorder guifg=#D8DEE9 guibg=#2E3440" },
		},
	},
}

require("config")
require("core.lib.packer").load_plugins()
require("core.lib.autocommands").load_augroups()

CONFIG_PATH = os.getenv("HOME") .. "/.config/nvim"
DATA_PATH = vim.fn.stdpath("data")
CACHE_PATH = vim.fn.stdpath("cache")
