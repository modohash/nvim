-- Disable the status column for NvimTree buffers
vim.api.nvim_create_augroup("NvimTreeStatuscolumn", { clear = true })
vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
  group = "NvimTreeStatuscolumn",
  pattern = {"NvimTree_*", "alpha"}, -- Match NvimTree buffer names
  callback = function()
    vim.opt_local.statuscolumn = ""
  end,
})

local ignore_filetypes_list = {
    "venv", "__pycache__", "%.xlsx", "%.jpg", "%.png", "%.webp",
    "%.pdf", "%.odt", "%.ico", "%.docx", "%.pptx", "%.mp4", ".git/",
}

-- Enable hidden files on Telescope
local telescope = require('telescope')
  telescope.setup {
    defaults = {
      file_ignore_patterns = ignore_filetypes_list,
    },
    pickers = {
      find_files = {
        hidden = true,
    },
  },
}
