local bind = vim.api.nvim_set_keymap
local cmd = vim.cmd

-- better window movement
bind('n', '<C-h>', '<C-w>h', {silent = true})
bind('n', '<C-j>', '<C-w>j', {silent = true})
bind('n', '<C-k>', '<C-w>k', {silent = true})
bind('n', '<C-l>', '<C-w>l', {silent = true})

-- because I can
cmd([[
    nnoremap ; :
    vnoremap ; :
    nnoremap ;<cr> :w<cr>
]])

-- Terminal window navigation
cmd([[
  tnoremap <C-h> <C-\><C-N><C-w>h
  tnoremap <C-j> <C-\><C-N><C-w>j
  tnoremap <C-k> <C-\><C-N><C-w>k
  tnoremap <C-l> <C-\><C-N><C-w>l
  inoremap <C-h> <C-\><C-N><C-w>h
  inoremap <C-j> <C-\><C-N><C-w>j
  inoremap <C-k> <C-\><C-N><C-w>k
  inoremap <C-l> <C-\><C-N><C-w>l
  tnoremap <Esc> <C-\><C-n>
]])

-- Resize with arrows
bind('n', '<C-Up>', ':resize -2<CR>', {silent = true})
bind('n', '<C-Down>', ':resize +2<CR>', {silent = true})
bind('n', '<C-Left>', ':vertical resize -2<CR>', {silent = true})
bind('n', '<C-Right>', ':vertical resize +2<CR>', {silent = true})

-- better indenting
bind('v', '<', '<gv', {noremap = true, silent = true})
bind('v', '>', '>gv', {noremap = true, silent = true})

-- Tab switch buffer
bind('n', '<TAB>', ':bnext<CR>', {noremap = true, silent = true})
bind('n', '<S-TAB>', ':bprevious<CR>', {noremap = true, silent = true})

-- Move selected line / block of text in visual mode
bind('x', 'K', ':move \'<-2<CR>gv-gv', {noremap = true, silent = true})
bind('x', 'J', ':move \'>+1<CR>gv-gv', {noremap = true, silent = true})


cmd 'vnoremap p "0p'
cmd 'vnoremap P "0P'

-- Rnvimr
bind('n', '-', ':RnvimrToggle<CR>', {noremap = true, silent = true})
