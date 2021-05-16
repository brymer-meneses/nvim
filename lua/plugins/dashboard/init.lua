vim.g.dashboard_default_executive = 'telescope'

vim.g.dashboard_custom_header = {
    ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
    ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
    ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
    ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
    ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
    ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝'
}

vim.g.dashboard_custom_section = {
    a = {
        description = {'  Find File          '},
        command = 'Telescope find_files'
    },
    b = {
        description = {'  Recently Used Files'},
        command = 'Telescope oldfiles'
    },
    c = {description = {'  Load Last Session  '}, command = 'SessionLoad'},
    d = {
        description = {'  Find Word          '},
        command = 'Telescope live_grep'
    },
    e = {
        description = {'  Documents           '},
        command = ':cd ~/Documents | NvimTreeToggle'
    },
    f = {
        description = {'  Settings           '},
        command = ':cd ~/.config/nvim/ | NvimTreeToggle'
    },
    -- f = {
    -- description = {'  Find Word              '},
    -- command = 'Telescope marks'
    -- }
}

vim.cmd("highlight DashboardHeader guifg=#434c5e")
