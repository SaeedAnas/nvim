local M = {}

M.colorsheme = "monokai"

M.module = require("ui.colors." .. M.colorsheme)

M.setup = function()
	M.module.setup()
end

M.colors = M.module.colors()

return M
