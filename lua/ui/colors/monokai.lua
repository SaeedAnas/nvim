local M = {}

M.setup = function()
	vim.cmd("colorscheme base16-monokai")
end

M.colors = function()
	local colors = {
		bg = "#272a30",
		fg = "#9ca0a4",
		red = "#e95678",
		green = "#a6e22e",
		yellow = "#e6db74",
		blue = "#66d9ef",
		purple = "#ae81ff",
		cyan = "#f92672",
		white = "#f8f8f0",
		black = "#272a30",
		gray = "#b1b1b1",
		highlight = "#fd971f",
	}
	return colors
end

return M
