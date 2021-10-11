local M = {}

M.colorsheme = "gruvbox"

M.module = require("ui.colors." .. M.colorsheme)

M.setup = function()
	M.module.setup()
end

M.colors = M.module.colors()

return M
