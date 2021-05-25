vim.o.termguicolors = true
vim.g.termcolors = 256

vim.cmd('colorscheme ' .. O.colorscheme)
require("plugins.lualine")

if vim.g.colors_name == "nord" then
    vim.g.nord_borders = true
    vim.g.nord_contrast = false

    require("plugins.galaxyline")

elseif vim.g.colors_name == "tokyonight" then
    SetLualineTheme("tokyonight")
    -- vim.g.tokyonight_style = "night"
elseif vim.g.colors_name == "gruvbox" then
    SetLualineTheme("gruvbox")
end
