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

require("alpha").setup(dashboard.config)
