-- LSP
--vim.lsp.enable("pyright")
--

-- Vim editor config
require("config.vim")

---- Plugin install
require("config.lazy")

-- Plugin config
require("config.keymaps")
require("config.treesitter")
require("config.lsp")
require("config.autocomplete")
require("config.ui")
