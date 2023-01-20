
local colorscheme = "poimandres"

vim.cmd("colorscheme " .. colorscheme)

if colorscheme == "poimandres" then
  vim.cmd("highlight EndOfBuffer guifg=#1b1e28")
end


