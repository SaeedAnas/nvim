local utils = require("utils")

utils.augroup({ comment = { { "BufNewFile,BufRead", "*", "setlocal formatoptions-=ro" } } })

vim.cmd("autocmd FileType java lua require'lsp.java'.setup()")

-- or create a vim command
vim.cmd('command! TermToggle lua require("FTerm").toggle()')
