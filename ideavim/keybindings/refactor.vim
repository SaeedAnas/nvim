" Rename file
let g:WhichKeyDesc_Files_Rename = "<leader>fR rename"
nnoremap <leader>fR    :action RenameFile<CR>
vnoremap <leader>fR    :action RenameFile<CR>

" Replace in path
let g:WhichKeyDesc_Projects_ReplaceInFiles = "<leader>pR replace-in-files"
nnoremap <leader>pR    :action ReplaceInPath<CR>
vnoremap <leader>pR    :action ReplaceInPath<CR>

" Rename symbol
let g:WhichKeyDesc_SearchSymbol_RenameElement = "<leader>se rename-element"
nnoremap <leader>se    :action RenameElement<CR>
vnoremap <leader>se    :action RenameElement<CR>
