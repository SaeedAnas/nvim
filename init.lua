-- Loads config faster (going to be merged to neovim soon [ see https://github.com/neovim/neovim/pull/15436 ])
require 'impatient'
require 'impatient'.enable_profile()

require 'plugins'
require 'settings'
require 'keymappings'
require 'autocmds'

-- core plugins
require 'core.which-key'
require 'core.telescope'
require 'core.gitsigns'
require 'core.tree' 
require 'core.treesitter'
require 'core.comment'
require 'core.others'

-- ui plugins
require 'ui.statusline'
require 'ui.dashboard'
require 'ui.bufferline'
require 'ui.color'
require 'ui.indent'

-- lsp plugins
