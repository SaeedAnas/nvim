" Compile selected file, package or module
let g:WhichKeyDesc_CompileComments_Compile = "<leader>cC     compile"
nnoremap <leader>cC    :action Compile<CR>
vnoremap <leader>cC    :action Compile<CR>

" Make project
let g:WhichKeyDesc_CompileComments_CompileDirty = "<leader>cc     compile-dirty"
nnoremap <leader>cc    :action CompileDirty<CR>
vnoremap <leader>cc    :action CompileDirty<CR>

" Make module
let g:WhichKeyDesc_CompileComments_MakeModule = "<leader>cm     make-module"
nnoremap <leader>cm    :action MakeModule<CR>
vnoremap <leader>cm    :action MakeModule<CR>

" List errors
let g:WhichKeyDesc_Errors_ListErrors = "<leader>el list-errors"
nnoremap <leader>el    :action CodeInspection.OnEditor<CR>
vnoremap <leader>el    :action CodeInspection.OnEditor<CR>

" Explain error at cursor
let g:WhichKeyDesc_Errors_ExplainError = "<leader>ex explain-error"
nnoremap <leader>ex    :action ShowErrorDescription<CR>
vnoremap <leader>ex    :action ShowErrorDescription<CR>

" Go to previous error
let g:WhichKeyDesc_Errors_PreviousError = "<leader>eN previous-error"
nnoremap <leader>eN    :action GotoPreviousError<CR>
vnoremap <leader>eN    <Esc>:action GotoPreviousError<CR>

" Go to next error
let g:WhichKeyDesc_Errors_NextError = "<leader>en next-error"
nnoremap <leader>en    :action GotoNextError<CR>
vnoremap <leader>en    <Esc>:action GotoNextError<CR>

" Go to previous error
let g:WhichKeyDesc_Errors_PreviousErrorAlt = "<leader>ep previous-error"
nnoremap <leader>ep    :action GotoPreviousError<CR>
vnoremap <leader>ep    <Esc>:action GotoPreviousError<CR>

" Insert snippet
let g:WhichKeyDesc_Insertion_InsertSnippet = "<leader>is insert-snippet"
nnoremap <leader>is    :action InsertLiveTemplate<CR>
vnoremap <leader>is    <Esc>:action InsertLiveTemplate<CR>

" Invalidate cache
let g:WhichKeyDesc_Projects_InvalidateCaches = "<leader>pI invalidate-caches"
nnoremap <leader>pI    :action InvalidateCaches<CR>
vnoremap <leader>pI    :action InvalidateCaches<CR>

" Highlight current symbol. Do it again to toggle highlight.
let g:WhichKeyDesc_SearchSymbol_HighlightUsages = "<leader>sh highlight-usages"
nnoremap <leader>sh    :action HighlightUsagesInFile<CR>
vnoremap <leader>sh    <Esc>:action HighlightUsagesInFile<CR>

" Find usages
let g:WhichKeyDesc_SearchSymbol_FindUsages = "<leader>sP find-usages"
nnoremap <leader>sP    :action FindUsages<CR>
vnoremap <leader>sP    :action FindUsages<CR>

