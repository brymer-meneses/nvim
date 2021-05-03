
local function change_lsp_colors()
    local lsp_colors = {
        warning = {"Warning" ,"#d08770"},
        error = {"Error", "#ebcb8b"},
        hint = {"Hint", "#8fbcbb"},
        information = {"Information","#d8dee9"},
    }

    local diagnostics = {"Default", "Sign", "Underline"}

    for _, diagnostic in pairs(diagnostics) do
        for _, value in pairs(lsp_colors) do
	    local type, color = unpack(value)
            local cmd = "highlight LspDiagnostics" .. diagnostic .. type .. "\t guifg = " .. color
            vim.api.nvim_exec(cmd, false)
        end
    end
end

change_lsp_colors()
