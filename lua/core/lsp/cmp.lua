-- nvim-cmp setup
local cmp = require("cmp")
local lspkind = require("lspkind")
local t = function(str)
	return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
	local col = vim.fn.col(".") - 1
	return col == 0 or vim.fn.getline("."):sub(col, col):match("%s") ~= nil
end

cmp.setup({
	documentation = {
		border = "single",
	},
	formatting = {
		format = function(entry, vim_item)
			vim_item.kind = lspkind.presets.default[vim_item.kind]

			vim_item.menu = ({
				buffer = "Buffer",
				nvim_lsp = "LSP",
				ultisnips = "Snippet",
				nvim_lua = "Lua",
				latex_symbols = "LaTeX",
			})[entry.source.name]
			return vim_item
		end,
	},
	snippet = {
		expand = function(args)
			vim.fn["UltSnips#Anon"](args.body)
		end,
	},
	sources = {
		{ name = "nvim_lsp" },
		{ name = "ultisnips" },
		{ name = "latex_symbols" },
		{ name = "path" },
	},
	mapping = {
		["<CR>"] = cmp.mapping(function(fallback)
			if vim.fn.pumvisible() == 1 then
				if vim.fn["UltiSnips#CanExpandSnippet"]() == 1 then
					return vim.fn.feedkeys(t("<C-R>=UltiSnips#ExpandSnippet()<CR>"))
				end

				vim.fn.feedkeys(t("<C-n>"), "n")
			elseif check_back_space() then
				vim.fn.feedkeys(t("<cr>"), "n")
			else
				fallback()
			end
		end, {
			"i",
			"s",
		}),
		["<Tab>"] = cmp.mapping(function(fallback)
			if vim.fn.complete_info()["selected"] == -1 and vim.fn["UltiSnips#CanExpandSnippet"]() == 1 then
				vim.fn.feedkeys(t("<C-R>=UltiSnips#ExpandSnippet()<CR>"))
			elseif vim.fn["UltiSnips#CanJumpForwards"]() == 1 then
				vim.fn.feedkeys(t("<ESC>:call UltiSnips#JumpForwards()<CR>"))
			elseif vim.fn.pumvisible() == 1 then
				vim.fn.feedkeys(t("<C-n>"), "n")
			elseif check_back_space() then
				vim.fn.feedkeys(t("<tab>"), "n")
			else
				fallback()
			end
		end, {
			"i",
			"s",
		}),
		["<S-Tab>"] = cmp.mapping(function(fallback)
			if vim.fn["UltiSnips#CanJumpBackwards"]() == 1 then
				return vim.fn.feedkeys(t("<C-R>=UltiSnips#JumpBackwards()<CR>"))
			elseif vim.fn.pumvisible() == 1 then
				vim.fn.feedkeys(t("<C-p>"), "n")
			else
				fallback()
			end
		end, {
			"i",
			"s",
		}),
	},
})
