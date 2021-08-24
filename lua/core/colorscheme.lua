vim.o.termguicolors = true
vim.g.termcolors = 256

vim.cmd("colorscheme " .. nvim.colorscheme)

if nvim.colorscheme == "nord" then
	vim.g.nord_borders = true
	vim.g.nord_contrast = false
end
