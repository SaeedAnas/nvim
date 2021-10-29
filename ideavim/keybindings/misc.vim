""" Key bindings that do not have <leader> as first key


" Next Tab
nnoremap <Tab>    :action NextTab<CR>
vnoremap <Tab>    <Esc>:action NextTab<CR>

" Previous Tab
nnoremap <S-Tab>    :action PreviousTab<CR>
vnoremap <S-Tab>    <Esc>:action PreviousTab<CR>

" Go to next change
let g:WhichKeyDesc_Misc_GotoNextChange = "g, goto-next-change"
nnoremap g,    :action JumpToNextChange<CR>
vnoremap g,    :action JumpToNextChange<CR>

" Go to last change
let g:WhichKeyDesc_Misc_GotoLastChange = "g; goto-last-change"
nnoremap g;    :action JumpToLastChange<CR>
vnoremap g;    :action JumpToLastChange<CR>

" Go to declaration
let g:WhichKeyDesc_Misc_JumpToDefinition = "gd jump-to-definition"
nnoremap <leader>gd    :action GotoDeclaration<CR>
vnoremap <leader>gd    <Esc>:action GotoDeclaration<CR>

" Collapse all folds
let g:WhichKeyDesc_Misc_CloseFolds = "zm close-folds"
nnoremap zm    :action CollapseAllRegions<CR>
vnoremap zm    :action CollapseAllRegions<CR>

" Open all folds
let g:WhichKeyDesc_Misc_OpenFolds = "zr open-folds"
nnoremap zr    :action ExpandAllRegions<CR>
vnoremap zr    :action ExpandAllRegions<CR>

" Jump to previously visited location
nnoremap <C-i>    :action Forward<CR>

" Jump to lately visited location
nnoremap <C-o>    :action Back<CR>

" Execute an action. Like <M-x>
nnoremap <A-X>    :action GotoAction<CR>
vnoremap <A-X>    :action GotoAction<CR>
inoremap <A-X>    <Esc>:action GotoAction<CR>

" Paste Multiple
nnoremap P    :action PasteMultiple<CR>
vnoremap P    :action PasteMultiple<CR>

" Focus window left
nnoremap <C-h>         <C-w>h
vnoremap <C-h>         <Esc><C-w>h

" Focus window down
nnoremap <C-j>         <C-w>j
vnoremap <C-j>         <Esc><C-w>j

" Focus window up
nnoremap <C-k>       <C-w>k
vnoremap <C-k>       <Esc><C-w>k

" Focus window right
nnoremap <C-l>          <C-w>l
vnoremap <C-l>          <Esc><C-w>l
