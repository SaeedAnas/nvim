local cmd = vim.cmd
local o = vim.o
local wo = vim.wo
local bo = vim.bo
cmd 'set iskeyword+=-' -- treat dash separated words as a word text object
cmd 'set shortmess+=c' -- Don't pass messages to |ins-completion-menu|.
cmd 'set inccommand=split' -- Make substitution work in realtime
cmd 'set formatoptions-=cro' -- Turn off automatic comment
vim.cmd('set formatoptions-=cro')
o.hidden = true -- Required to keep multiple buffers open multiple buffers
o.title = true
o.titlestring = '%<%F%=%l/%L - nvim'
wo.wrap = false -- Display long lines as just one line
cmd 'set whichwrap +=<,>,[,],h,l' -- move to next line with these keys
cmd 'syntax on' -- syntax highlighting
o.pumheight = 10 -- Makes popup menu smaller
o.fileencoding = 'utf-8' -- The encoding written to file
o.cmdheight = 1 -- More space for displaying messages
cmd 'set colorcolumn=99999' -- fix indentline for now
o.mouse = 'a' -- Enable your mouse
o.splitbelow = true -- Horizontal splits will automatically be below
o.termguicolors = true -- set term gui colors most terminals support this
o.splitright = true -- vertical splits will automatically be to the right
o.conceallevel = 0 -- So that I can see `` in markdown files
cmd 'set ts=4' -- Insert 2 spaces for a tab
cmd 'set sw=4' -- Change the number of space characters inserted for indentation
cmd 'set expandtab' -- Converts tabs to spaces
bo.smartindent = true -- Makes indenting smart
wo.number = true -- set numbered lines
wo.relativenumber = false -- set relative number
wo.cursorline = true -- Enable highlighting of the current line
o.showtabline = 2 -- Always show tabs
o.showmode = false -- We don't need to see things like -- INSERT -- anymore
o.backup = false -- This is recommended by coc
o.writebackup = false -- This is recommended by coc
wo.signcolumn = 'yes' -- Always show the sign column, otherwise it would shift the text each time
o.updatetime = 300 -- Faster completion
o.timeoutlen = 100 -- By default timeout len is 1000 ms
o.clipboard = 'unnamedplus' -- Copy paste between vim and everything else
cmd 'filetype plugin on' -- filetype detection
o.guifont = 'FiraCode Nerd Font Mono:h12'
o.scrolloff = 8
o.sidescrolloff = 8

