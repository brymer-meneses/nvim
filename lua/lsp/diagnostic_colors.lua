
local function change_lsp_colors()
    local lsp_colors = {
        {"Warning" ,"#d08770"},
        {"Error", "#ebcb8b"},
        {"Hint", "#8fbcbb"},
        {"Information","#d8dee9"},
    }

    local diagnostics = {"Default", "Sign", "Underline"}

    for _, diagnostic in pairs(diagnostics) do
        for _, value in pairs(lsp_colors) do
	    local type, color = unpack(value)
            local cmd = nil
            if diagnostic == "Underline" then
                cmd = "highlight LspDiagnostics" .. diagnostic .. type .. "\t guifg = " .. color .. "\t guisp = " .. color
            else
                cmd = "highlight LspDiagnostics" .. diagnostic .. type .. "\t guifg = " .. color
            end
            vim.api.nvim_exec(cmd, false)
        end
    end
end

change_lsp_colors()
