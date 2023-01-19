local formatter = require("null-ls").builtins.formatting

local null_ls = require("null-ls")

null_ls.setup({
  debug = false,
  sources = {
    formatter.prettierd,
    formatter.rustfmt,
    formatter.black,
    formatter.clang_format,
  },
})

vim.cmd [[
 augroup format_on_save
   autocmd! 
   autocmd BufWritePre * lua vim.lsp.buf.format({ async = false }) 
 augroup end 
]]
