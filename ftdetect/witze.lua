local function witze_txt_ft(path, bufnr)
	local first_line = vim.filetype.getlines(bufnr, 1)
	if first_line:match("^#%s*witze") then
		return "witze"
	end
	return "text"
end

local function witze_yml_ft(path, bufnr)
	local first_line = vim.filetype.getlines(bufnr, 1)
	if first_line:match("^#%s*witze") then
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
