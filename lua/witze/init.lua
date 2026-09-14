local M = {}

function M.setup()
	vim.api.nvim_create_autocmd("User", {
		pattern = "TSUpdate",
		callback = function()
			require("nvim-treesitter.parsers").witz = {
				tier = 0,
				install_info = {
					url = "https://github.com/acovaci/tree-sitter-witze",
					revision = "main",
				},
			}
		end,
	})
end

return M
