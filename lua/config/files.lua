-- Disable the status column for NvimTree buffers
vim.api.nvim_create_augroup("NvimTreeStatuscolumn", { clear = true })
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
	group = "NvimTreeStatuscolumn",
	pattern = { "NvimTree_*", "alpha" }, -- Match NvimTree buffer names
	callback = function()
		vim.opt_local.statuscolumn = ""
	end,
})

local ignore_filetypes_list = {
	"venv",
	"__pycache__",
	"%.xlsx",
	"%.jpg",
	"%.webp",
	"%.pdf",
	"%.odt",
	"%.ico",
	"%.docx",
	"%.pptx",
	"%.mp4",
	".git/",
}

-- Enable hidden files on Telescope
require("hologram").setup({})
local telescope = require("telescope")
local hologram_previewer = require("config.telescope_extensions.hologram")
telescope.setup({
	defaults = {
		file_ignore_patterns = ignore_filetypes_list,
	},
	pickers = {
		find_files = {
			hidden = true,
		},
		live_grep = {
			additional_args = function(opts)
				return { "--hidden" }
			end,
		},
	},
})
