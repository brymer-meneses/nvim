return {
  "xiyaowong/transparent.nvim",
  enabled = false,
  opts = {
   groups = { -- table: default groups
      'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
      'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
      'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
      'SignColumn', 'CursorLineNr', 'EndOfBuffer',
    },
    -- extra_groups = {
    --   'NvimTreeNormal'
    -- }, -- table: additional groups that should be cleared
    -- exclude_groups = {
    --   'Normal'
    -- }
  },
  config = function ()
    vim.cmd("autocmd Colorscheme * highlight NvimTreeNormal guibg=none guifg=#9da5b3")
  end
}
