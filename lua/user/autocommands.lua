vim.api.nvim_create_autocmd(
  { "CursorMoved", "CursorHold", "BufWinEnter", "BufFilePost", "InsertEnter", "BufWritePost", "TabClosed" },
  {
    callback = function()
      require("user.winbar").get_winbar()
    end,
  }
)
