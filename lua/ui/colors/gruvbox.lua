local M = {}

M.colors = {
	bg = "#1d2021",
	fg = "#3c3836",
	red = "#fb4934",
	green = "#b8bb26",
	yellow = "#fabd2f",
	blue = "#83a598",
	purple = "#d3869b",
	cyan = "#fe8019",
	white = "#fbf1c7",
	black = "#1d2021",
	gray = "#665c54",
	highlight = "#8ec07c",
}

-- Colorscheme
M.setup = function()
	vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
	vim.cmd("colorscheme base16-gruvbox-dark-hard")
end

return M
