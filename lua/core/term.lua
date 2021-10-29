local fterm = require("FTerm")
local M = {}

M.run_python = function()
	local filename = vim.fn.expand("%:p")
	fterm.scratch({ cmd = { "python3", filename } })
end

M.run_rust = function()
	fterm.scratch({ cmd = { "cargo", "run" } })
end

M.run_java = function()
	local filepath = vim.fn.expand("%:p")
	local filename = vim.fn.expand("%:r")
	fterm.scratch({ cmd = { "javac", filepath, "; java", filename } })
end

return M
