vim.filetype.add({
	extension = {
		mod = "witze",
		gfx = "witze",
		gui = "witze",
	},
	pattern = {
		[".*%.txt$"] = {
			priority = math.huge,
			function(path, bufnr)
				local first_line = vim.filetype.getlines(bufnr, 1)
				if vim.filetype.matchregex(first_line, [[^#\s*witze]]) then
					return "witze"
				end
			end,
		},
		[".*%.yml$"] = {
			priority = math.huge,
			function(path, bufnr)
				local first_line = vim.filetype.getlines(bufnr, 1)
				if vim.filetype.matchregex(first_line, [[^#\s*witze]]) then
					return "witze"
				end
			end,
		},
	},
})
