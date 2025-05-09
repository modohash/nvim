return {
    -- Ayu
    {
	    "shatur/neovim-ayu",
	    lazy = false,
	    priority = 1000,
        overrides = {
--            LineNr = { fg = "#FFFFFF" },
        },
	    config = function()
	        require("ayu").setup({
    		    mirage = true
	        })
	        vim.cmd.colorscheme "ayu"
            vim.api.nvim_set_hl(0, 'LineNr', { fg = "#CDCAC1" })
            vim.api.nvim_set_hl(0, 'CursorLine', { bg = "#324357" })
	    end
    },
}
