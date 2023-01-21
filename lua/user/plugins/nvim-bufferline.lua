return {
  "akinsho/bufferline.nvim",
  init = function ()
    local opts = { silent=true, noremap=true };
    vim.keymap.set("n", "<TAB>n", "<cmd>BufferLineCyclePrev<cr>", opts)
    vim.keymap.set("n", "<TAB>m", "<cmd>BufferLineCycleNext<cr>", opts)
    vim.keymap.set("n", "<TAB>b", "<cmd>bdelete<cr>", opts)
  end,
  opts = {
    options = {
      separator_syle = "thin",
      numbers = "none",
      offsets = {
        {
          filetype = "NvimTree",
          text = "Files",
          text_align = "center",
        },
      },
      diagnostics = "nvim_lsp",
    },
  }
}
