-- Keymaps
local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts) -- NvimTree

-- Telescope
keymap("n", "<leader>f", ":Telescope find_files<cr>", { desc = "Telescope find files" })
keymap("n", "<leader>g", ":Telescope live_grep<cr>", { desc = "Telescope live grep" })
keymap("n", "<leader>b", ":Telescope buffers<cr>", { desc = "Telescope buffers" })
keymap("n", "<leader>h", ":Telescope help_tags<cr>", { desc = "Telescope help tags" })
keymap("n", "<leader>r", ":Telescope oldfiles<cr>", { desc = "Telescope old files" })
