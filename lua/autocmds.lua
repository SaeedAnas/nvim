local utils = require("utils")

utils.augroup({ comment = { { "BufNewFile,BufRead", "*", "setlocal formatoptions-=ro" } } })

vim.cmd("autocmd FileType java lua require'lsp.java'.setup()")
