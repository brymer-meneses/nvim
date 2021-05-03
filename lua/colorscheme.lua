

vim.cmd('set termguicolors')
vim.cmd('let g:termcolors=256')

vim.cmd('colorscheme ' .. O.colorscheme)
vim.api.nvim_exec([[
    highlight LspDiagnosticsDefaultWarning  guifg = #bf616a
    highlight LspDiagnosticsDefaultError    guifg = #ebcb8b
    highlight LspDiagnosticsDefaultHint     guifg = #88c0d0

    highlight LspDiagnosticsSignWarning     guifg = #bf616a 
    highlight LspDiagnosticsSignError       guifg = #ebcb8b 
    highlight LspDiagnosticsSignHint        guifg = #88c0d0 
]], false)
