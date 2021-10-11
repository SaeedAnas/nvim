local M = {}
local lsp = require("feline.providers.lsp")
local git = require("feline.providers.git")
local vi_mode_utils = require("feline.providers.vi_mode")
local icon = require("nvim-web-devicons")
local lsp_status = require("lsp-status/statusline")
---------------------------------PROPERTIES--------------------------------- {{{
M.components = {
	active = {},
	inactive = {},
}
M.force_inactive = {
	filetypes = {
		"packer",
		"floaterm",
		"toggleterm",
		"Trouble",
		"alpha",
		"dap-repl",
		"dapui_scopes",
		"dapui_stacks",
		"dapui_breakpoints",
		"dapui_watches",
	},
	buftypes = {
		"terminal",
	},
	bufnames = {},
}
---------------------------------------------------------------------------- }}}
-----------------------------------HELPERS---------------------------------- {{{
-- Determine if we're using a session file
local function using_session()
	return (vim.g.using_persistence ~= nil)
end

-- Determine if there is enough space in the window to display components
local function there_is_width(winid)
	return vim.api.nvim_win_get_width(winid) > 80
end

local function testing()
	if vim.g.testing_status == "running" then
		return " "
	end
	if vim.g.testing_status == "fail" then
		return ""
	end
	if vim.g.testing_status == "pass" then
		return " "
	end
	return nil
end
---------------------------------------------------------------------------- }}}
function M.setup()
	local present, feline = pcall(require, "feline")
	if not present then
		return
	end

	local c = require("ui.color").colors
	---------------------------------COMPONENTS--------------------------------- {{{
	M.vi_mode_colors = {
		NORMAL = c.green,
		OP = c.green,
		INSERT = c.blue,
		VISUAL = c.red,
		LINES = c.cyan,
		BLOCK = c.yellow,
		REPLACE = c.purple,
		["V-REPLACE"] = c.purple,
		ENTER = c.purple,
		MORE = c.purple,
		SELECT = c.red,
		COMMAND = c.green,
		SHELL = c.green,
		TERM = c.green,
		NONE = c.yellow,
	}

	local InactiveStatusHL = {
		fg = c.gray,
		bg = "NONE",
		style = "underline",
	}

	local mode = {
		provider = " ",
		hl = function()
			local val = {}

			val.bg = vi_mode_utils.get_mode_color()
			val.fg = "NONE"

			return val
		end,
		right_sep = "",
	}

	local separator = {
		provider = function()
			return testing()
		end,
		enabled = function()
			return testing() ~= nil
		end,
		left_sep = " ",
		right_sep = {
			str = " >",
			hl = { fg = c.gray },
		},
	}

	local file_info = {
		provider = {
			name = "file_info",
			opts = {
				type = "unique",
				colored_icon = false,
			},
		},
		left_sep = " ",
		hl = function()
			local val = {}

			local filename = vim.fn.expand("%")
			local filetype = vim.bo.filetype

			local icon, color = icon.get_icon_color(filename, filetype, { default = true })

			val.fg = color

			return val
		end,
	}

	local lsp_separator = {
		provider = ">",
		enabled = function(winid)
			return lsp.is_lsp_attached() and there_is_width(winid)
		end,
	}

	local diagnostic_errors = {
		provider = "diagnostic_errors",
		enabled = function(winid)
			return there_is_width(winid)
		end,
		hl = {
			fg = c.red,
		},
	}

	local diagnostic_warnings = {
		provider = "diagnostic_warnings",
		enabled = function(winid)
			return there_is_width(winid)
		end,
		hl = {
			fg = c.yellow,
		},
	}

	local diagnostic_hints = {
		provider = "diagnostic_hints",
		enabled = function(winid)
			return there_is_width(winid)
		end,
		hl = {
			fg = c.blue,
		},
	}

	local diagnostic_info = {
		provider = "diagnostic_info",
		enabled = function(winid)
			return there_is_width(winid)
		end,
		hl = {
			fg = c.blue,
		},
	}

	local lsp_names = {
		provider = "lsp_client_names",
		enabled = function(winid)
			return lsp.is_lsp_attached() and there_is_width(winid)
		end,
		icon = "",
		left_sep = {
			str = " [LSP: ",
			hl = { fg = c.gray },
		},
		right_sep = {
			str = "]",
			hl = { fg = c.gray },
		},
	}

	local spacing = {
		hl = {
			fg = c.bg,
		},
	}

	local persistence = {
		provider = function()
			if vim.g.using_persistence then
				return "  <"
			elseif vim.g.using_persistence == false then
				return "  <"
			end
		end,
		enabled = function()
			return using_session()
		end,
	}

	local spacer = { -- Spacer for if there is no width
		provider = " ",
		enabled = function(winid)
			return not there_is_width(winid)
		end,
	}

	local git_branch = {
		provider = "git_branch",
		enabled = function(winid)
			return git.git_info_exists(winid) and there_is_width(winid)
		end,
		left_sep = " ",
	}

	local git_add = {
		provider = "git_diff_added",
		enabled = function(winid)
			return git.git_info_exists(winid) and there_is_width(winid)
		end,
		icon = " +",

		hl = {
			fg = c.green,
		},
	}

	local git_changed = {
		provider = "git_diff_changed",
		enabled = function(winid)
			return git.git_info_exists(winid) and there_is_width(winid)
		end,
		icon = " ~",
		hl = {
			fg = c.yellow,
		},
	}

	local git_removed = {
		provider = "git_diff_removed",
		enabled = function(winid)
			return git.git_info_exists(winid) and there_is_width(winid)
		end,
		icon = " -",
		hl = {
			fg = c.red,
		},
	}

	local percentage_spacer = {
		provider = " < ",
		enabled = function(winid)
			return git.git_info_exists(winid) and there_is_width(winid)
		end,
	}

	local percentage = {
		provider = "line_percentage",
		right_sep = " ",
	}

	local scroll_bar = {
		provider = "scroll_bar",
		hl = function()
			local val = {}

			val.fg = vi_mode_utils.get_mode_color()
			val.bg = "NONE"

			return val
		end,
	}

	local lsp_messages = {
		provider = function()
			local messages = lsp_status.progress()
			return messages
		end,
		enabled = function(winid)
			return lsp.is_lsp_attached() and there_is_width(winid)
		end,
	}

	local file_info_inactive = {
		provider = {
			name = "file_info",
			opts = {
				type = "unique",
				colored_icon = false,
			},
		},
		left_sep = " ",
		hl = {
			fg = c.gray,
		},
	}

	local mode_inactive = {
		provider = " ",
		hl = {
			bg = c.gray,
		},
		right_sep = "",
	}

	local scroll_bar_inactive = {
		provider = "scroll_bar",
		hl = {
			fg = c.gray,
		},
	}
	------------------------------------LEFT------------------------------------ {{{
	M.components.active[1] = {
		mode,
		separator,
		file_info,
		lsp_separator,
		diagnostic_errors,
		diagnostic_warnings,
		diagnostic_hints,
		diagnostic_info,
		lsp_names,
		lsp_messages,
		-- Fill in the section between the left and the right components
		spacing,
	}
	---------------------------------------------------------------------------- }}}
	------------------------------------RIGHT----------------------------------- {{{
	M.components.active[2] = {
		persistence,
		spacer,
		git_branch,
		git_add,
		git_changed,
		git_removed,
		percentage_spacer,
		percentage,
		scroll_bar,
	}
	---------------------------------------------------------------------------- }}}
	M.components.inactive[1] = {
		mode_inactive,
		separator,
		file_info_inactive,
		spacing,
	}

	M.components.inactive[2] = {
		percentage,
		scroll_bar_inactive,
	}

	feline.setup({
		colors = { fg = c.gray, bg = "NONE" },
		preset = "noicon",
		vi_mode_colors = M.vi_mode_colors,
		components = M.components,
		force_inactive = M.force_inactive,
	})
end

return M
