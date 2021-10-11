require("tmux").setup({
	copy_sync = {
		enable = false,
	},
	navigation = {
		cycle_navigation = false,
		enable_default_keybindings = false,
		persist_zoom = true,
	},
	resize = {
		enable_default_keybindings = true,
	},
})

local map = vim.api.nvim_set_keymap

-- better window movement
map("n", "<C-h>", ":lua require('tmux').move_left()<cr>", { silent = true })
map("n", "<C-j>", ":lua require('tmux').move_bottom()<cr>", { silent = true })
map("n", "<C-k>", ":lua require('tmux').move_top()<cr>", { silent = true })
map("n", "<C-l>", ":lua require('tmux').move_right()<cr>", { silent = true })
