local M = {}

M.string_calculator = function(input)
	if type(input) ~= "string" then
		error("Argument to string_calculator is not a string, got type " .. type(input))
	end

	if #input == 0 then
		return 0
	end

	local output = 0
	for match in input:gmatch("(%d+)") do
		output = tonumber(match) + output
	end

	return output
end

M.calculate_buffer = function()
	local buffer = vim.api.nvim_get_current_buf()
	local namespace = vim.api.nvim_create_namespace("string_calculator")

	vim.api.nvim_buf_clear_namespace(buffer, namespace, 0, -1)

	for line_number, line in pairs(vim.api.nvim_buf_get_lines(buffer, 0, -1, false)) do
		local calculated_string = M.string_calculator(line)
		if calculated_string ~= 0 then
			vim.api.nvim_buf_set_extmark(
				buffer,
				namespace,
				line_number - 1,
				0,
				{ virt_text = { { tostring(calculated_string), "DevIconMotoko" } } }
			)
		end
	end
end

return M
