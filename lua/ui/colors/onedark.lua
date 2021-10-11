local M = {}

M.colors = function()
	local colors = {
		bg = "#1e1e1e",
		fg = "#aab2bf",
		red = "#e06c75",
		green = "#98C379",
		yellow = "#ecbf6f",
		blue = "#61afef",
		purple = "#c678dd",
		cyan = "#56b6c2",
		white = "#abb2bf",
		black = "#1E1E1E",
		gray = "#4c4f55",
		highlight = "#e2be7d",
	}
	return colors
end

-- Colorscheme
M.setup = function()
	local onedark = require("onedark")
	onedark.setup({
		theme = "onedark",
		styles = {
			comments = "italic",
			functions = "NONE",
			keywords = "bold,italic",
			strings = "NONE",
			variables = "NONE",
		},
	})
	onedark.load()
end

return M
