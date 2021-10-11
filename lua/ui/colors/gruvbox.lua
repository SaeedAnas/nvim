local M = {}

M.colors = function()
	local colors = {
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
	return colors
end
-- Colorscheme
M.setup = function()
	vim.cmd("colorscheme base16-gruvbox-dark-hard")
end

-- lua require('base16-colorscheme').setup({
--     \ base00 = '#1d2021', base01 = '#3c3836', base02 = '#504945', base03 = '#665c54',
--     \ base04 = '#bdae93', base05 = '#d5c4a1', base06 = '#ebdbb2', base07 = '#fbf1c7',
--     \ base08 = '#fb4934', base09 = '#fe8019', base0A = '#fabd2f', base0B = '#b8bb26',
--     \ base0C = '#8ec07c', base0D = '#83a598', base0E = '#d3869b', base0F = '#d65d0e'
--     \})

return M
