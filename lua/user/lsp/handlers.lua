local function set_lsp_keymaps(bufnr)
  local opts = { noremap = true, silent = true, buffer = bufnr }

  local function nnoremap(key, command)
    vim.keymap.set("n", key, command, opts)
  end

  nnoremap("gD", "<cmd>lua vim.lsp.buf.declaration()<CR>")
  nnoremap("gd", "<cmd>lua vim.lsp.buf.definition()<CR>")
  nnoremap("<C-Space>", "<cmd>lua vim.lsp.buf.hover()<CR>")
  nnoremap("gi", "<cmd>lua vim.lsp.buf.implementation()<CR>")
  nnoremap("gr", "<cmd>lua vim.lsp.buf.references()<CR>")
  nnoremap("<leader>q", "<cmd>lua vim.diagnostic.setloclist()<CR>")
  nnoremap("<leader>fs", "<cmd>lua vim.lsp.buf.formatting_sync()<CR>")
  nnoremap("<Tab>k", "<cmd>lua vim.diagnostic.goto_next({ popup_opts = { border = 'rounded' }})<CR>")
  nnoremap("<Tab>j", "<cmd>lua vim.diagnostic.goto_prev({ popup_opts = { border = 'rounded' }})<CR>")
  nnoremap("<Tab><Tab>", "<cmd>lua vim.diagnostic.open_float({ border = 'rounded' })<CR>")
end

local function set_lsp_user_commands(bufnr)

  local function create_command(name, func, desc)
    vim.api.nvim_buf_create_user_command(bufnr, name, function() func() end, { desc = desc })
  end

  create_command('Format', function() vim.lsp.buf.format() end, 'Format current buffer with LSP.')
  create_command('ToggleFormatOnSave', function() vim.g.user_is_format_enabled = not vim.g.user_is_format_enabled end,
    'Toggle Format on Save.')
end

local function set_lsp_autocommands(client, bufnr)
  vim.g.user_is_format_enabled = false
  vim.api.nvim_create_augroup("LspAutoCommands", { clear = true })

  vim.api.nvim_create_autocmd("BufWritePre", {
    buffer = bufnr,
    group = "LspAutoCommands",
    callback = function()
      if vim.g.user_is_format_enabled then
        vim.lsp.buf.format()
      end
    end
  })

  vim.api.nvim_create_autocmd("CursorHold", {
    buffer = bufnr,
    group = "LspAutoCommands",
    callback = function()
      if client.server_capabilities.document_highlight then
        vim.lsp.buf.document_highlight()
      end
    end
  })

  vim.api.nvim_create_autocmd("CursorMoved", {
    buffer = bufnr,
    group = "LspAutoCommands",
    callback = function()
      if client.server_capabilities.document_highlight then
        vim.lsp.buf.clear_references()
      end
    end
  })
end

local function on_attach(client, bufnr)
  set_lsp_keymaps(bufnr)
  set_lsp_user_commands(bufnr)
  set_lsp_autocommands(client, bufnr)
end

local function initialize_lsp_capabilities()
  local capabilities = vim.lsp.protocol.make_client_capabilities()
  capabilities.textDocument.completion.completionItem.snippetSupport = true
  capabilities.textDocument.completion.completionItem.resolveSupport = {
    properties = {
      "documentation",
      "detail",
      "additionalTextEdits",
    },
  }
  capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)
  return capabilities
end

return {
  on_attach = on_attach,
  capabilites = initialize_lsp_capabilities()
}
