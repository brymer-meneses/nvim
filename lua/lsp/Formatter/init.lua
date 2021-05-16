local log_dir = "/home/brymer-meneses/.logs/indent.log "
require('formatter').setup({

    logging = false,
    filetype = {
        tex = {
            function()
                return {
                    exe = "latexindent",
                    args = {
                       "-d", vim.api.nvim_buf_get_name(0)
                    },
                    stdin = true
                }
            end
        },
        vue = {
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
        rust = {
            -- Rustfmt
            function()
                return {exe = "rustfmt", args = {"--emit=stdout"}, stdin = true}
            end
        },
        -- luafmt
        lua = {
            function()
                return {
                    exe = "/usr/local/lib/luarocks/rocks-5.4/luaformatter/scm-1/bin/lua-format",
                    args = {vim.api.nvim_buf_get_name(0)},
                    stdin = true
                }
            end
        },
        html = {
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
        css = {
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
        }

    }
})

-- TODO dynamically create autocommands
-- if O.{language}.autoformat is set to true
vim.api.nvim_exec([[
    augroup FormatAutogroup
      autocmd!
      autocmd BufWritePost *.js,*.rs,*.lua FormatWrite
    augroup END
]], true)
