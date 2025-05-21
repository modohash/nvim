local dashboard = require("alpha.themes.dashboard")
local button = dashboard.button

-- Header
dashboard.section.header.val = {
	[[                                   ]],
	[[                                   ]],
	[[                                   ]],
	[[                                   ]],
	[[                                   ]],
	[[                                   ]],
	[[                                   ]],
	[[          ▀████▀▄▄              ▄█ ]],
	[[            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ]],
	[[    ▄        █          ▀▀▀▀▄  ▄▀  ]],
	[[   ▄▀ ▀▄      ▀▄              ▀▄▀  ]],
	[[  ▄▀    █     █▀   ▄█▀▄      ▄█    ]],
	[[  ▀▄     ▀▄  █     ▀██▀     ██▄█   ]],
	[[   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ]],
	[[    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ]],
	[[   █   █  █      ▄▄           ▄▀   ]],
}

dashboard.section.buttons.val = {
	button("e", "  New file", "<cmd>ene <CR>"),
	button("SPC f", "󰈞  Find file"),
	button("SPC g", "󰈬  Find word"),
	button("SPC r", "  Recent files"),
	button("SPC e", "  File explorer"),
}

local alpha = require("alpha")

-- Configure alpha to disable statuscolumn when it's shown
vim.api.nvim_create_autocmd("User", {
	pattern = "AlphaReady",
	callback = function()
		vim.opt_local.statuscolumn = ""
	end,
	desc = "Disable statuscolumn in Alpha",
})

alpha.setup(dashboard.config)
