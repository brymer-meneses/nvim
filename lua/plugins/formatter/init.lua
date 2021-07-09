local luafmt =
    [[/usr/local/lib/luarocks/rocks-5.4/luaformatter/scm-1/bin/lua-format]]

require('formatter').setup({
    logging = false,
    filetype = {
        javascript = {
            -- prettier
            function()
                return {
                    exe = "prettier",
                    args = {
                        "--stdin-filepath", vim.api.nvim_buf_get_name(0),
                        '--single-quote'
                    },
                    stdin = true
                }
            end
        },
        javascriptreact = {
            -- prettier
            function()
                return {
                    exe = "prettier",
                    args = {
                        "--stdin-filepath", vim.api.nvim_buf_get_name(0),
                        '--single-quote'
                    },
                    stdin = true
                }
            end
        },
        rust = {
            -- Rustfmt
            function()
                return {exe = "rustfmt", args = {"--emit=stdout"}, stdin = true}
            end
        },
        lua = {
            -- luafmt
            function()
                return {
                    exe = luafmt,
                    args = {"--tab-width=2", "--no-use-tab"},
                    stdin = true
                }
            end
        }
    }
})

vim.api.nvim_exec([[
    augroup FormatAutogroup
      autocmd!
      autocmd BufWritePost *.js,*.rs,*.lua silent! FormatWrite
    augroup END
    nnoremap <silent> <leader>f :Format<CR>
]], true)
