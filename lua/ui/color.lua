local M = {}

M.colorsheme = "tokyonight"

M.module = require("ui.colors." .. M.colorsheme)

M.colors = M.module.colors

M.plugins = function()
	local c = M.colors
	local plugins = {
		TelescopeBorder = { fg = c.green },
		TelescopePromptBorder = { fg = c.green },
		TelescopeResultsBorder = { fg = c.purple },
		TelescopePreviewBorder = { fg = c.cyan },
		TelescopeMatching = { fg = c.yellow },
		TelescopePromptPrefix = { fg = c.blue },
		TelescopeSelectionCaret = { fg = c.blue },
		WhichKey = { fg = c.red },
		WhichKeyDesc = { fg = c.blue },
		WhichKeyGroup = { fg = c.orange },
		WhichKeySeperator = { fg = c.green },
	}

	require("utils").highlight(plugins)
end

M.setup = function()
	M.module.setup()
	M.plugins()
end

return M
