return {
  "akinsho/bufferline.nvim",
  config = {
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
