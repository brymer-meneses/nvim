local rust = {
	lsp = {
		provider = "rust_analyzer",
		cmd = { DATA_PATH .. "/lspinstall/rust/rust-analyzer" },
		filetypes = { "rust" },
		root_dir = require("lspconfig.util").root_pattern("Cargo.toml", "rust-project.json"),
	},
}

return rust
