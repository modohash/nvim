-- Set line numbers
vim.wo.number = true

-- Disable swap files
vim.opt.swapfile = false

-- Enable terminal colours
vim.opt.termguicolors = true

-- Map leader to comma
vim.g.mapleader = " "

vim.o.tabstop = 4 -- A TAB character looks like 4 spaces
vim.o.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
vim.o.softtabstop = 4 -- Number of spaces inserted instead of a TAB character
vim.o.shiftwidth = 4 -- Number of spaces inserted when indenting
