local available_themes = {"gruvbox"}

local toggleterm = {
    sections = {lualine_a = 'ToggleTerm'},
    filetypes = {'toggleterm'}
}
-- require'lualine'.setup {extensions = {toggleterm}}

function SetLualineTheme(colorscheme)
    do
        local lualine_theme = nil

        for _, theme in ipairs(available_themes) do
            if theme == colorscheme then
                lualine_theme = colorscheme
            else
                lualine_theme = "auto"
            end
        end

        require'lualine'.setup {
            options = {
                icons_enabled = true,
                theme = lualine_theme,
                component_separators = {'', ''},
                section_separators = {'', ''},
                disabled_filetypes = {'dashboard'}
            },
            sections = {
                lualine_a = {'mode'},
                lualine_b = {'branch'},
                lualine_c = {'filename'},
                lualine_x = {
                    -- 'encoding',
                    -- 'fileformat',
                    'filetype'
                },
                lualine_y = {'progress'},
                lualine_z = {'location'}
            },
            inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = {'filename'},
                lualine_x = {'location'},
                lualine_y = {},
                lualine_z = {}
            },
            tabline = {},
            extensions = {'nvim-tree', 'quickfix'}
        }
    end

    return

end

