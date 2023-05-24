

local function set_theme(theme)

  vim.cmd("colorscheme " .. theme)


  if theme == "poimandres" then

    vim.api.nvim_set_hl(0, "EndOfBuffer", { fg="#1b1e28" })

  elseif theme == "themer_gruvbox" then

    -- vim.api.nvim_set_hl(0, "WinSeparator", {fg="#665c54", bg="#282828"})
    vim.api.nvim_set_hl(0, "WinSeparator", { link="ThemerDimmed" })
  end


end

vim.api.nvim_create_user_command(
  "SetTheme",
  function (opts)
    set_theme(opts.args)
  end,
  {nargs = 1}
)

