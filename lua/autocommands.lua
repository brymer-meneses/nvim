

-- Disables auto-comment when entering a new line.

vim.cmd([[
    augroup general
        autocmd!
        autocmd BufRead      *  setlocal formatoptions-=c formatoptions-=r formatoptions-=o
        autocmd BufNewFile   *  setlocal formatoptions-=c formatoptions-=r formatoptions-=o
        autocmd BufWinEnter  *  setlocal formatoptions-=c formatoptions-=r formatoptions-=o
    augroup END
]])

-- Remap for source %

vim.cmd([[
    augroup vimscript
        autocmd!
        autocmd BufRead      *.vim :nnoremap <Tab>l :source %<CR> :echom "sourced" <CR>
        autocmd BufNewFile   *.vim :nnoremap <Tab>l :source %<CR> :echom "sourced" <CR>
        autocmd BufWinEnter  *.vim :nnoremap <Tab>l :source %<CR> :echom "sourced" <CR>

    augroup END

    augroup lua
        autocmd!
        autocmd BufRead      *.lua :nnoremap <Tab>l :luafile %<CR> :echom "sourced" <CR> 
        autocmd BufNewFile   *.lua :nnoremap <Tab>l :luafile %<CR> :echom "sourced" <CR>
        autocmd BufWinEnter  *.lua :nnoremap <Tab>l :luafile %<CR> :echom "sourced" <CR>
    augroup END
]])


