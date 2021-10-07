local wk = require("which-key")
wk.setup {
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
            g = false -- bindings for prefixed with g
        }
    },
    icons = {
        breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
        separator = "➜", -- symbol used between a key and it's label
        group = "+" -- symbol prepended to a group
    },
    window = {
        border = "single", -- none, single, double, shadow
        position = "bottom", -- bottom, top
        margin = {1, 0, 1, 0}, -- extra window margin [top, right, bottom, left]
        padding = {2, 2, 2, 2} -- extra window padding [top, right, bottom, left]
    },
    layout = {
        height = {min = 4, max = 25}, -- min and max height of the columns
        width = {min = 20, max = 50}, -- min and max width of the columns
        spacing = 3 -- spacing between columns
    },
    hidden = {"<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ "}, -- hide mapping boilerplate
    show_help = true -- show help message on the command line when the popup is visible
}

local opts = {
    mode = "n", -- NORMAL mode
    prefix = "<leader>",
    buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
    silent = true, -- use `silent` when creating keymaps
    noremap = true, -- use `noremap` when creating keymaps
    nowait = false -- use `nowait` when creating keymaps
}

local default_opts = {noremap = true, silent = true}

-- Set leader
vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', default_opts)
vim.g.mapleader = ' '

-- Which-key mappings
local mappings = {
    ["f"] = {'<cmd>Telescope find_files<cr>', 'Find files'},
    ["v"] = {'<cmd>vsplit<cr>', 'Split Right'},
    ["h"] = {'<cmd>split<cr>', 'Split Down'},
    ["H"] = {'<cmd>set hlsearch!<cr>', 'No Highlight'},
    ["."] = {'<cmd>e $HOME/.config/nvim/init.lua<cr>', 'Open config'},
    ["e"] = {'<cmd>NvimTreeToggle<cr>', 'Filetree'},
    ["/"] = {'<cmd>RnvimrToggle<cr>', 'Ranger'},
    ["p"] = {'<cmd>Telescope projects<cr>', 'Projects'},
}

wk.register(mappings, opts)
