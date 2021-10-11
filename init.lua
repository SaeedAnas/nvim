require("plugins")
require("settings")
require("keymappings")
require("autocmds")

-- Loads config faster (going to be merged to neovim soon [ see https://github.com/neovim/neovim/pull/15436 ])
require("impatient")

-- core plugins
require("core.which-key")
require("core.telescope")
require("core.git")
require("core.tree")
require("core.treesitter")
require("core.comment")
require("core.tmux")
require("core.lightspeed")
require("core.others")

-- Not using
-- require("core.autosave")

-- ui plugins
require("ui.dashboard")
require("ui.buffer")

-- lsp plugins
require("lsp.lsp")
require("lsp.nvim-cmp")
require("lsp.rust")
