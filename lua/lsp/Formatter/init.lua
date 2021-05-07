
require('formatter').setup({
  logging = false,
  filetype = {
    tex = {
        function()
            return {
                exe = O.latex.formatter,
                args = {vim.api.nvim_buf_get_name(0)},
                stdin=true
                }
        end
        },
    javascript = {
        -- prettier
       function()
          return {
            exe = "prettier",
            args = {"--stdin-filepath", vim.api.nvim_buf_get_name(0), '--single-quote'},
            stdin = true
          }
        end
    },
    rust = {
      -- Rustfmt
      function()
        return {
          exe = "rustfmt",
          args = {"--emit=stdout"},
          stdin = true
        }
      end
    },
    lua = {
        -- luafmt
        function()
          return {
            exe = "luafmt",
            args = {"--indent-count", 2, "--stdin"},
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
      autocmd BufWritePost *.tex,*.js,*.rs,*.lua FormatWrite
    augroup END
]], true)
