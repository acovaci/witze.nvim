vim.filetype.add({
	extension = {
		mod = "witz",
		gfx = "witz",
		gui = "witz",
	},
	pattern = {
		[".*%.txt$"] = {
			priority = math.huge,
			function(path, bufnr)
				local first_line = vim.filetype.getlines(bufnr, 1)
				if vim.filetype.matchregex(first_line, [[^#\s*witze]]) then
					return "witz"
				end
			end,
		},
	},
})
