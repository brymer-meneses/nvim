local M = {}

M.load_augroups = function()
	local definitions = nvim.autocommands
	for group_name, definition in pairs(definitions) do
		M.define_augroup(group_name, definition)
	end
end

M.define_augroup = function(group_name, definition)
	vim.cmd("augroup " .. group_name)
	vim.cmd("autocmd!")

	for _, def in ipairs(definition) do
		local command = table.concat(vim.tbl_flatten({ "autocmd", def }), " ")
		vim.cmd(command)
	end

	vim.cmd("augroup END")
end

return M
