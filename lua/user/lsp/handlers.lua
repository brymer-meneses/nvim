local function lsp_highlight_document(client)
	-- Set autocommands conditional on server_capabilities
	if client.server_capabilities.document_highlight then
		vim.api.nvim_exec(
			[[ 
        augroup lsp_document_highlight
          autocmd! * <buffer>
          autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
          autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
        augroup END
      ]], false
		)
	end
end

local function lsp_keymaps(bufnr)
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


local function lsp_capabilities()
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

local function on_attach(client, bufnr)
	lsp_keymaps(bufnr)
	lsp_highlight_document(client)
end

return {
  on_attach = on_attach,
  capabilites = lsp_capabilities()
}

