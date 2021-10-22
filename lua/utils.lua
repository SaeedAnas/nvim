local M = {}

local api = vim.api
local cmd = vim.cmd

local get_map_options = function(custom_options)
	local options = { noremap = true, silent = true }
	if custom_options then
		options = vim.tbl_extend("force", options, custom_options)
	end
	return options
end

M.augroup = function(definitions)
	for group_name, definition in pairs(definitions) do
		cmd("augroup " .. group_name)
		cmd("autocmd!")
		for _, def in pairs(definition) do
			local command = table.concat(vim.tbl_flatten({ "autocmd", def }), " ")
			cmd(command)
		end
		cmd("augroup END")
	end
end

M.buf_augroup = function(name, event, fn)
	api.nvim_exec(
		string.format(
			[[
    augroup %s
        autocmd! * <buffer>
        autocmd %s <buffer> %s
    augroup END
    ]],
			name,
			event,
			fn
		),
		false
	)
end

local function buf_set_keymap(bufnr, ...)
	api.nvim_buf_set_keymap(bufnr, ...)
end

local function buf_set_option(bufnr, ...)
	api.nvim_buf_set_option(bufnr, ...)
end

M.command = function(name, fn)
	cmd(string.format("command! %s %s", name, fn))
end

M.lua_command = function(name, fn)
	M.command(name, "lua " .. fn)
end

M.random = function(number)
	math.randomseed(tonumber(tostring(os.time()):reverse():sub(1, 6)))
	return math.random() and math.random() and math.random() and math.random(number)
end

M.newtab = function()
	vim.cmd("tabnew")
	vim.cmd("Dashboard")
end

local function gui(group_settings)
	if group_settings.bold then
		return "bold"
	elseif group_settings.underline then
		return "underline"
	elseif group_settings.undercurl then
		return "undercurl"
	elseif group_settings.italic then
		return "italic"
	elseif group_settings.reverse then
		return "reverse"
	else
		return "NONE"
	end
end

M.highlight = function(highlights)
	for group_name, group_settings in pairs(highlights) do
		local fg = group_settings.fg and "guifg=" .. group_settings.fg or "guifg=NONE"
		local bg = group_settings.bg and "guibg=" .. group_settings.bg or "guibg=NONE"
		local sp = group_settings.sp and "guisp=" .. group_settings.sp or "guisp=NONE"
		vim.cmd(
			"highlight " .. group_name .. " " .. "gui=" .. gui(group_settings) .. " " .. fg .. " " .. bg .. " " .. sp
		)
	end
end
-- M.highlight = function(highlights)
-- 	for group_name, group_settings in pairs(highlights) do
-- 		vim.cmd("hi " .. group_name .. " guifg=" .. group_settings)
-- 	end
-- end

return M
