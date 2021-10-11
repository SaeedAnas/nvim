local M = {}

M.colorsheme = "onedark"

M.module = require("ui.colors." .. M.colorsheme)

M.setup = function()
	M.module.setup()
end

M.colors = M.module.colors()

return M
