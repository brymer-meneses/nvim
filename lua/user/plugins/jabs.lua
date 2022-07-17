require 'jabs'.setup {
    -- Options for the main window
    position = 'center', -- center, corner. Default corner
    width = 80, -- default 50
    height = 20, -- default 10
    border = 'rounded', -- none, single, double, rounded, solid, shadow, (or an array or chars). Default shadow

    offset = { -- window position offset
        top = 2, -- default 0
        bottom = 2, -- default 0
        left = 2, -- default 0
        right = 2, -- default 0
    },

    -- Options for preview window
    preview_position = 'right', -- top, bottom, left, right. Default top
    preview = {
        width = 40, -- default 70
        height = 60, -- default 30
        border = 'rounded', -- none, single, double, rounded, solid, shadow, (or an array or chars). Default double
    },
    highlight = {
        current = "Title", -- default StatusLine
        hidden = "StatusLineNC", -- default ModeMsg
        split = "WarningMsg", -- default StatusLine
        alternate = "StatusLine" -- default WarningMsg
    },

    -- Whether to use nvim-web-devicons next to filenames
    use_devicons = true -- true or false. Default true
}
