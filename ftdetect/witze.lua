local function first_line_is_witze(bufnr)
	local ok, line = pcall(vim.api.nvim_buf_get_lines, bufnr, 0, 1, false)
	if not ok or not line[1] then
		return false
	end
	return line[1]:match("^#%s*witze") ~= nil
end

local function witze_txt_ft(path, bufnr)
	if first_line_is_witze(bufnr) then
		return "witze"
	end
	return "text"
end

local function witze_yml_ft(path, bufnr)
	if first_line_is_witze(bufnr) then
		return "witze"
	end
	return "yaml"
end

vim.filetype.add({
	extension = {
		mod = "witze",
		gfx = "witze",
		gui = "witze",
		txt = witze_txt_ft,
		yml = witze_yml_ft,
	},
})
