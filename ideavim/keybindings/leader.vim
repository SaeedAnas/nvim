" Keybindings that only use <leader>

" Go to first tab
let g:WhichKeyDesc_Buffers_FirstTab = "<leader>1    first-tab"
nnoremap <leader>1    :action GoToTab1<CR>
vnoremap <leader>1    <Esc>:action GoToTab1<CR>

" Go to last tab
let g:WhichKeyDesc_Buffers_LastTab = "<leader>0    last-tab"
nnoremap <leader>0    :action GoToLastTab<CR>
vnoremap <leader>0    <Esc>:action GoToLastTab<CR>

" Focus on project window.
" Sadly when you are inside the project window this key binding does not work
" anymore. You can use <A-1> if you want to close the window or <Esc> if you
" want to leave the window opened and focus on the code.
let g:WhichKeyDesc_Files_FileTree = "<leader>e file-tree"
nnoremap <leader>e    :action ActivateProjectToolWindow<CR>
vnoremap <leader>e    :action ActivateProjectToolWindow<CR>

" Execute an action. Like <M-x>
let g:WhichKeyDesc_Leader_Space = "<leader><Space> M-x"
nnoremap <leader><Space>    :action GotoAction<CR>
vnoremap <leader><Space>    :action GotoAction<CR>

" Focus last buffer
let g:WhichKeyDesc_Leader_LastBuffer = "<leader><Tab> last-buffer"
nnoremap <leader><Tab>    <C-S-6>
vnoremap <leader><Tab>    <Esc><C-S-6>

" Open a new terminal window (use :! for a single shell cmd)
let g:WhichKeyDesc_Leader_OpenShell = "<leader>! open-shell"
nnoremap <leader>!    :action Terminal.OpenInTerminal<CR>
vnoremap <leader>!    :action Terminal.OpenInTerminal<CR>

" Activate terminal window
let g:WhichKeyDesc_Leader_OpenShell2 = "<leader>' open-shell"
nnoremap <leader>'    :action ActivateTerminalToolWindow<CR>
vnoremap <leader>'    :action ActivateTerminalToolWindow<CR>

" Show usages for symbol.
" Ideally this should be FindInPath the current word, but I think that it is
" not possible.
let g:WhichKeyDesc_Leader_ShowUsages = "<leader>* show-usages"
nnoremap <leader>*    :action ShowUsages<CR>
vnoremap <leader>*    :action ShowUsages<CR>

" Comment lines
let g:WhichKeyDesc_Leader_Comment = "<leader>/ comment"
nnoremap <leader>/    :action CommentByLineComment<CR>
let g:WhichKeyDesc_Leader_Comment2 = "<leader>/ comment"
vnoremap <leader>/     :action CommentByLineComment<CR>

" Show key bindings
let g:WhichKeyDesc_Leader_ShowKeybindings = "<leader>? show-keybindings"
nnoremap <leader>?    :map<CR>
vnoremap <leader>?    <Esc>:map<CR>

" Search in project files
let g:WhichKeyDesc_Leader_SearchProject = "<leader>t search-project"
nnoremap <leader>t    :action FindInPath<CR>
vnoremap <leader>t    :action FindInPath<CR>

" Find files
let g:WhichKeyDesc_Files_GotoFile = "<leader>f goto-file"
nnoremap <leader>f    :action GotoFile<CR>
vnoremap <leader>f    :action GotoFile<CR>

" Reformat whole buffer
let g:WhichKeyDesc_JumpJoinSplit_Reformat= "<leader>w reformat"
nnoremap <leader>w    :action ReformatCode<CR>

" Clear search highlights.
let g:WhichKeyDesc_SearchSymbol_ClearHighlight = "<leader>H clear-highlight"
nnoremap <leader>H    :nohlsearch<CR>
vnoremap <leader>H    <Esc>:nohlsearch<CR>

" Toggle distraction free mode
let g:WhichKeyDesc_UiTogglesThemes_DistractionFreeMode = "<leader>z distraction-free-mode"
nnoremap <leader>z    :action ToggleDistractionFreeMode<CR>
vnoremap <leader>z    :action ToggleDistractionFreeMode<CR>

" Split window right
let g:WhichKeyDesc_Windows_SplitWindowRight = "<leader>v split-window-right"
nnoremap <leader>v    :action SplitVertically<CR>
vnoremap <leader>v    <Esc>:action SplitVertically<CR>

" Split window below
let g:WhichKeyDesc_Windows_SplitWindowBelow = "<leader>h split-window-below"
nnoremap <leader>h    :action SplitHorizontally<CR>
vnoremap <leader>h    <Esc>:action SplitHorizontally<CR>
