local M = {}

function M.get_file_name()
	return vim.api.nvim_buf_get_name(0)
end

function M.table_contains(table, key)
	return table[key] ~= nil
end

return M
