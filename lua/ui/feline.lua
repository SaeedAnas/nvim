local M = {}
local lsp = require("feline.providers.lsp")
local git = require("feline.providers.git")
local vi_mode_utils = require("feline.providers.vi_mode")
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

	local c = require("ui.colors")
	---------------------------------COMPONENTS--------------------------------- {{{
	M.vi_mode_colors = {
		NORMAL = c.green,
		OP = c.green,
		INSERT = c.blue,
		VISUAL = c.red,
		LINES = c.red,
		BLOCK = c.red,
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
	------------------------------------LEFT------------------------------------ {{{
	M.components.active[1] = {
		{
			provider = " ",
			hl = function()
				local val = {}

				val.bg = vi_mode_utils.get_mode_color()
				val.fg = "NONE"

				return val
			end,
			right_sep = "",
		},
		{
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
		},
		{
			provider = {
				name = "file_info",
				opts = {
					type = "unique",
					colored_icon = false,
				},
			},
			left_sep = " ",
		},
		{
			provider = ">",
			enabled = function(winid)
				return lsp.is_lsp_attached() and there_is_width(winid)
			end,
		},
		{
			provider = "diagnostic_errors",
			enabled = function(winid)
				return there_is_width(winid)
			end,
		},
		{
			provider = "diagnostic_warnings",
			enabled = function(winid)
				return there_is_width(winid)
			end,
		},
		{
			provider = "diagnostic_hints",
			enabled = function(winid)
				return there_is_width(winid)
			end,
		},
		{
			provider = "diagnostic_info",
			enabled = function(winid)
				return there_is_width(winid)
			end,
		},
		{
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
		},
		-- Fill in the section between the left and the right components
		{
			hl = {
				fg = c.bg,
			},
		},
	}
	---------------------------------------------------------------------------- }}}
	------------------------------------RIGHT----------------------------------- {{{
	M.components.active[2] = {
		{
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
		},
		{ -- Spacer for if there is no width
			provider = " ",
			enabled = function(winid)
				return not there_is_width(winid)
			end,
		},
		{
			provider = "git_branch",
			enabled = function(winid)
				return git.git_info_exists(winid) and there_is_width(winid)
			end,
			left_sep = " ",
		},
		{
			provider = "git_diff_added",
			enabled = function(winid)
				return git.git_info_exists(winid) and there_is_width(winid)
			end,
			icon = " +",
		},
		{
			provider = "git_diff_changed",
			enabled = function(winid)
				return git.git_info_exists(winid) and there_is_width(winid)
			end,
			icon = " ~",
		},
		{
			provider = "git_diff_removed",
			enabled = function(winid)
				return git.git_info_exists(winid) and there_is_width(winid)
			end,
			icon = " -",
		},
		{
			provider = " < ",
			enabled = function(winid)
				return git.git_info_exists(winid) and there_is_width(winid)
			end,
		},
		{
			provider = "line_percentage",
			right_sep = " ",
		},
		{
			provider = "scroll_bar",
		},
	}
	---------------------------------------------------------------------------- }}}
	M.components.inactive = {
		{
			{
				provider = "",
				hl = InactiveStatusHL,
			},
			{
				hl = {
					fg = c.bg,
				},
			},
		},
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
