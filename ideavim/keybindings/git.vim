" Show log of current file
let g:WhichKeyDesc_GitVcs_File_Log = "<leader>gf log"
nnoremap <leader>gf    :action Vcs.ShowTabbedFileHistory<CR>
vnoremap <leader>gf    :action Vcs.ShowTabbedFileHistory<CR>
""" ---------------------------------------------
" Show local changes (git status)
let g:WhichKeyDesc_GitVcs_Status = "<leader>gs status"
nnoremap <leader>gs    :action Vcs.Show.Local.Changes<CR>
vnoremap <leader>gs    :action Vcs.Show.Local.Changes<CR>

" Update project (git pull)
let g:WhichKeyDesc_GitVcs_Vcs_Pull = "<leader>gp pull"
nnoremap <leader>gp    :action Vcs.UpdateProject<CR>
vnoremap <leader>gp    :action Vcs.UpdateProject<CR>

" Annotate. Show when each line was last edited and by whom.
let g:WhichKeyDesc_GitVcs_Vcs_Annotate = "<leader>gb blame"
nnoremap <leader>gb    :action Annotate<CR>
vnoremap <leader>gb    :action Annotate<CR>

" Show log (git log)
let g:WhichKeyDesc_GitVcs_Vcs_Log = "<leader>gl log"
nnoremap <leader>gl    :action Vcs.Show.Log<CR>
vnoremap <leader>gl    :action Vcs.Show.Log<CR>
""" ---------------------------------------------

" Git checkout
let g:WhichKeyDesc_GitVcs_Branches = "<leader>gb branches"
nnoremap <leader>gb    :action Git.Branches<CR>
vnoremap <leader>gb    :action Git.Branches<CR>

" Show Version control tool window
let g:WhichKeyDesc_GitVcs_ShowWindow = "<leader>gG show-window"
nnoremap <leader>gG    :action ActivateVersionControlToolWindow<CR>
vnoremap <leader>gG    :action ActivateVersionControlToolWindow<CR>

" Select a VCS operation
let g:WhichKeyDesc_GitVcs_SelectOperation = "<leader>gg select-operation"
nnoremap <leader>gg    :action Vcs.QuickListPopupAction<CR>
vnoremap <leader>gg    :action Vcs.QuickListPopupAction<CR>

" Vcs push (git push)"
let g:WhichKeyDesc_GitVcs_Push = "<leader>gp push"
nnoremap <leader>gp    :action Vcs.Push<cr>
vnoremap <leader>gp    :action Vcs.Push<cr>

" Show shelf
let g:WhichKeyDesc_GitVcs_Shelf = "<leader>gS shelf"
nnoremap <leader>gS    :action Vcs.Show.Shelf<CR>
vnoremap <leader>gS    :action Vcs.Show.Shelf<CR>

