-- Colorscheme
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

-- Colorizer
require("colorizer").setup({
	"lua",
	"css",
	"javascript",
	html = {
		mode = "foreground",
	},
})
