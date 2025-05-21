require("mason").setup()

require("mason-lspconfig").setup({
	automatic_enable = true,
	ensure_installed = {
		"lua_ls",
		"pyright",
		"kotlin_language_server",
		"ts_ls",
		"html",
	},
})

vim.diagnostic.config({
	-- Set inline messages for errors, etc. to show
	virtual_text = {
		spacing = 4,
		source = "if_many",
		prefix = "●",
	},
	-- Override the default signs used for different messages
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = "",
			[vim.diagnostic.severity.WARN] = "",
			[vim.diagnostic.severity.INFO] = "󰋼",
			[vim.diagnostic.severity.HINT] = "󰌵",
		},
	},
})

-- Swift support via sourcekit-lsp
local lspconfig = require("lspconfig")
lspconfig.sourcekit.setup({
	capabilities = {
		workspace = {
			didChangeWatchedFiles = {
				dynamicRegistration = true,
			},
		},
	},
})
