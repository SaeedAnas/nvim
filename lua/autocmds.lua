local utils = require('utils')

utils.augroup({comment = {{'BufNewFile,BufRead', '*', 'setlocal formatoptions-=ro'}}})
