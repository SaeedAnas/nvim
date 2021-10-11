local c = require("ui.color").colors
require("nvim-treesitter.configs").setup({
	highlight = {
		enable = true,
		use_languagetree = true,
	},
	context_commentstring = {
		enable = true,
		enable_autocmd = false,
	},
	matchup = {
		enable = true, -- mandatory, false will disable the whole extension
	},
	rainbow = {
		enable = true,
		extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
		max_file_lines = nil, -- Do not enable for files with more than n lines, int
		-- colors = {}, -- table of hex strings
		colors = {
			c.red,
			c.green,
			c.yellow,
			c.blue,
			c.purple,
			c.cyan,
		},
		-- termcolors = {} -- table of colour name strings
	},
	autotag = {
		enable = true,
	},
})
