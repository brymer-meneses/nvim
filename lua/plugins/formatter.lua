local filename = vim.api.nvim_buf_get_name(0)
require("formatter").setup({
	logging = false,
	filetype = {
		javascript = {
			-- prettier
			function()
				return {
					exe = "prettier",
					args = {
						"--stdin-filepath",
						filename,
						"--single-quote",
					},
					stdin = true,
				}
			end,
		},
		javascriptreact = {
			-- prettier
			function()
				return {
					exe = "prettier",
					args = {
						"--stdin-filepath",
						filename,
						"--single-quote",
					},
					stdin = true,
				}
			end,
		},
		rust = {
			-- Rustfmt
			function()
				return { exe = "rustfmt", args = { "--emit=stdout" }, stdin = true }
			end,
		},
		lua = {
			-- luafmt
			function()
				return {
					exe = "stylua",
					args = { "-" },
					stdin = true,
				}
			end,
		},
		python = {
			function()
				return {
					exe = "black",
					args = { "--stdin-filename", vim.api.nvim_buf_get_name(0) },
					stdin = false,
				}
			end,
		},
	},
})

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
