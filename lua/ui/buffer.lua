-- Colorscheme
require("ui.color").setup()

-- Tab bar
vim.opt.termguicolors = true
require("bufferline").setup({})

-- Statusbar
require("ui.feline").setup()

-- Indent
require("indent_blankline").setup({
	char = "|",
	buftype_exclude = { "terminal", "NvimTree" },
	filetype_exclude = { "dashboard" },
	show_current_context = true,
})

-- Colorizer
require("colorizer").setup({
	"lua",
	"css",
	"javascript",
	html = {
		mode = "foreground",
	},
})
