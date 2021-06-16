-- Disables auto-comment when entering a new line.
vim.cmd([[
    augroup general
        autocmd!
        autocmd BufRead      *  setlocal formatoptions-=c formatoptions-=r formatoptions-=o
        autocmd BufNewFile   *  setlocal formatoptions-=c formatoptions-=r formatoptions-=o
        autocmd BufWinEnter  *  setlocal formatoptions-=c formatoptions-=r formatoptions-=o
    augroup END
]])

-- Remap for source
vim.cmd([[
    augroup source
        autocmd!
        autocmd BufRead      *.lua, *.vim :nnoremap <Tab>l :source %<CR> :echom "sourced" <CR>
        autocmd BufNewFile   *.lua, *.vim :nnoremap <Tab>l :source %<CR> :echom "sourced" <CR>
        autocmd BufWinEnter  *.lua, *.vim :nnoremap <Tab>l :source %<CR> :echom "sourced" <CR>
    augroup END
]])

