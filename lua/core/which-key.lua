local wk = require("which-key")
wk.setup({
	plugins = {
		marks = true, -- shows a list of your marks on ' and `
		registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
		-- the presets plugin, adds help for a bunch of default keybindings in Neovim
		-- No actual key bindings are created
		presets = {
			operators = false, -- adds help for operators like d, y, ...
			motions = false, -- adds help for motions
			text_objects = false, -- help for text objects triggered after entering an operator
			windows = true, -- default bindings on <c-w>
			nav = true, -- misc bindings to work with windows
			z = true, -- bindings for folds, spelling and others prefixed with z
			g = false, -- bindings for prefixed with g
		},
	},
	icons = {
		breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
		separator = "➜", -- symbol used between a key and it's label
		group = "+", -- symbol prepended to a group
	},
	window = {
		border = "single", -- none, single, double, shadow
		position = "bottom", -- bottom, top
		margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
		padding = { 2, 2, 2, 2 }, -- extra window padding [top, right, bottom, left]
	},
	layout = {
		height = { min = 4, max = 25 }, -- min and max height of the columns
		width = { min = 20, max = 50 }, -- min and max width of the columns
		spacing = 3, -- spacing between columns
	},
	hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ " }, -- hide mapping boilerplate
	show_help = true, -- show help message on the command line when the popup is visible
})

local opts = {
	mode = "n", -- NORMAL mode
	prefix = "<leader>",
	buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
	silent = true, -- use `silent` when creating keymaps
	noremap = true, -- use `noremap` when creating keymaps
	nowait = false, -- use `nowait` when creating keymaps
}

local default_opts = { noremap = true, silent = true }

-- Set leader
vim.api.nvim_set_keymap("n", "<Space>", "<NOP>", default_opts)
vim.g.mapleader = " "

-- Comments
vim.api.nvim_set_keymap("n", "<leader>/", ":CommentToggle<CR>", default_opts)
vim.api.nvim_set_keymap("v", "<leader>/", ":CommentToggle<CR>", default_opts)

-- Search and Replace
vim.api.nvim_set_keymap("v", "<leader>m", ":lua require('spectre').open_visual()<cr>", default_opts)

-- Which-key mappings
local mappings = {
	["f"] = { "<cmd>Telescope find_files<cr>", "Find files" },
	["v"] = { "<cmd>vsplit<cr>", "Split Right" },
	["h"] = { "<cmd>split<cr>", "Split Down" },
	["H"] = { "<cmd>set hlsearch!<cr>", "No Highlight" },
	["."] = { "<cmd>e $HOME/.config/nvim/init.lua<cr>", "Open config" },
	["e"] = { "<cmd>NvimTreeToggle<cr>", "Filetree" },
	["r"] = { "<cmd>RnvimrToggle<cr>", "Ranger" },
	["p"] = { "<cmd>Telescope projects<cr>", "Projects" },
	["b"] = { "<cmd>Telescope buffers<cr>", "Buffers" },
	["/"] = "Comment",
	["1"] = { "1gt", "Tab 1" },
	["2"] = { "2gt", "Tab 2" },
	["3"] = { "3gt", "Tab 3" },
	["4"] = { "4gt", "Tab 4" },
	["5"] = { "5gt", "Tab 5" },
	["6"] = { "6gt", "Tab 6" },
	["7"] = { "7gt", "Tab 7" },
	["8"] = { "8gt", "Tab 8" },
	["9"] = { "9gt", "Tab 9" },
	["0"] = { "<cmd>tablast<cr>", "Last Tab" },
	["t"] = { "<cmd>lua require('utils').newtab()<cr>", "New Tab" },
	["q"] = { "<cmd>q<cr>", "quit" },
	["Q"] = { "<cmd>qa!<cr>", "Quit all" },
	["z"] = { "<cmd>ZenMode<cr>", "Zen Mode" },
	["m"] = { "<cmd>lua require('spectre').open()<cr>", "Search and Replace" },
	["c"] = { "<cmd>lua require('utils').toggle_copilot()<cr>", "Toggle Copilot" },
	s = {
		name = "+Search",
		b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
		c = { "<cmd>Telescope colorscheme<cr>", "Colorscheme" },
		d = { "<cmd>Telescope lsp_document_diagnostics<cr>", "Document Diagnostics" },
		D = { "<cmd>Telescope lsp_workspace_diagnostics<cr>", "Workspace Diagnostics" },
		f = { "<cmd>Telescope find_files<cr>", "Find File" },
		m = { "<cmd>Telescope marks<cr>", "Marks" },
		M = { "<cmd>Telescope man_pages<cr>", "Man Pages" },
		r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
		R = { "<cmd>Telescope registers<cr>", "Registers" },
		t = { "<cmd>Telescope live_grep<cr>", "Text" },
	},
	d = {
		name = "+Diagnostics",
		t = { "<cmd>TroubleToggle<cr>", "trouble" },
		w = { "<cmd>TroubleToggle lsp_workspace_diagnostics<cr>", "workspace" },
		d = { "<cmd>TroubleToggle lsp_document_diagnostics<cr>", "document" },
		q = { "<cmd>TroubleToggle quickfix<cr>", "quickfix" },
		l = { "<cmd>TroubleToggle loclist<cr>", "loclist" },
		r = { "<cmd>TroubleToggle lsp_references<cr>", "references" },
	},
	g = {
		name = "+Git",
		j = { "<cmd>NextHunk<cr>", "Next Hunk" },
		k = { "<cmd>PrevHunk<cr>", "Prev Hunk" },
		p = { "<cmd>PreviewHunk<cr>", "Preview Hunk" },
		r = { "<cmd>ResetHunk<cr>", "Reset Hunk" },
		R = { "<cmd>ResetBuffer<cr>", "Reset Buffer" },
		s = { "<cmd>StageHunk<cr>", "Stage Hunk" },
		u = { "<cmd>UndoStageHunk<cr>", "Undo Stage Hunk" },
		o = { "<cmd>Telescope git_status<cr>", "Open changed file" },
		b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
		c = { "<cmd>Telescope git_commits<cr>", "Checkout commit" },
		C = { "<cmd>Telescope git_bcommits<cr>", "Checkout commit(for current file)" },
	},
	l = {
		name = "+LSP",
		-- a = { "<cmd>Lspsaga code_action<cr>", "Code Action" },
		-- A = { "<cmd>Lspsaga range_code_action<cr>", "Selected Action" },
		d = { "<cmd>Telescope lsp_document_diagnostics<cr>", "Document Diagnostics" },
		D = { "<cmd>Telescope lsp_workspace_diagnostics<cr>", "Workspace Diagnostics" },
		f = { "<cmd>LspFormatting<cr>", "Format" },
		i = { "<cmd>LspInfo<cr>", "Info" },
		-- l = { "<cmd>Lspsaga lsp_finder<cr>", "LSP Finder" },
		-- L = { "<cmd>Lspsaga show_line_diagnostics<cr>", "Line Diagnostics" },
		-- p = { "<cmd>Lspsaga preview_definition<cr>", "Preview Definition" },
		q = { "<cmd>Telescope quickfix<cr>", "Quickfix" },
		-- r = { "<cmd>Lspsaga rename<cr>", "Rename" },
		t = { "<cmd>LspTypeDefinition<cr>", "Type Definition" },
		x = { "<cmd>cclose<cr>", "Close Quickfix" },
		s = { "<cmd>Telescope lsp_document_symbols<cr>", "Document Symbols" },
		S = { "<cmd>Telescope lsp_workspace_symbols<cr>", "Workspace Symbols" },
	},
	w = {
		["="] = { "<C-w>=", "Equal" },
		["t"] = { "<C-w>T", "Move to new Tab" },
	},
}

wk.register(mappings, opts)

-- File specific
vim.g.maplocalleader = ","

local u = require("utils")
u.augroup({ comment = { { "VimEnter,BufEnter,BufRead", "*", "lua SetFileKeybinds()" } } })
function SetFileKeybinds()
	local local_opts = {
		mode = "n", -- NORMAL mode
		prefix = "<localleader>",
		buffer = vim.api.nvim_get_current_buf(), -- local buffer mappings
		silent = true, -- use `silent` when creating keymaps
		noremap = true, -- use `noremap` when creating keymaps
		nowait = false, -- use `nowait` when creating keymaps
	}
	local fileTy = vim.api.nvim_buf_get_option(0, "filetype")
	if fileTy == "rust" then
		wk.register({
			["c"] = { "<cmd>RustOpenCargo<cr>", "open cargo" },
		}, local_opts)
	elseif fileTy == "lua" then
		wk.register({
			["t"] = { "test-lua", "test-lua" },
		}, local_opts)
	elseif fileTy == "python" then
		wk.register({
			["t"] = { "test-python", "test-python" },
		}, local_opts)
	elseif fileTy == "java" then
		wk.register({
			["t"] = { "test-java", "test-java" },
		}, local_opts)
	end
end
