-- Disables auto-comment when entering a new line.
vim.cmd([[
    augroup general
        autocmd!
        autocmd BufRead      *  setlocal formatoptions-=c formatoptions-=r formatoptions-=o
        autocmd BufNewFile   *  setlocal formatoptions-=c formatoptions-=r formatoptions-=o
        autocmd BufWinEnter  *  setlocal formatoptions-=c formatoptions-=r formatoptions-=o
    augroup END
]])

vim.api.nvim_exec(
	[[
    augroup FormatAutogroup
      autocmd!
      autocmd BufWritePost *.js,*.rs,*.lua,*.py silent! FormatWrite
    augroup END
    nnoremap <silent> <leader>f :Format<CR>
]],
	true
)