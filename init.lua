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
-- require("core.autosave")
require("core.lightspeed")
require("core.others")

-- ui plugins
require("ui.statusline")
require("ui.dashboard")
require("ui.bufferline")
require("ui.color")
require("ui.indent")

-- lsp plugins
require("lsp.lsp")
require("lsp.nvim-cmp")
