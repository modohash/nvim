-- Disable the status column for NvimTree buffers
vim.api.nvim_create_augroup("NvimTreeStatuscolumn", { clear = true })
vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
  group = "NvimTreeStatuscolumn",
  pattern = {"NvimTree_*", "alpha"}, -- Match NvimTree buffer names
  callback = function()
    vim.opt_local.statuscolumn = ""
  end,
})
