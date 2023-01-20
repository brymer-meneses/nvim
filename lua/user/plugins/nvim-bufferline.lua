return {
  "akinsho/bufferline.nvim",
  config = function ()
    vim.keymap.set("n", "<TAB>n", "<cmd>BufferLineCyclePrev<cr>", {silent=true, noremap=true})
    vim.keymap.set("n", "<TAB>m", "<cmd>BufferLineCycleNext<cr>", {silent=true, noremap=true})
    require("bufferline").setup({
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
    })
  end
}
