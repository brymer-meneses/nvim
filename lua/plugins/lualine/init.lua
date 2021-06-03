local available_themes = {"gruvbox"}

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
                disabled_filetypes = {}
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
            extensions = {}
        }
    end

    return

end

