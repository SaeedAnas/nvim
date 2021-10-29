" <SPC> as the leader key
let mapleader = " "

" Show current vim mode
set showmode

" Use the clipboard register '*' for all yank, delete, change and put operations
" which would normally go to the unnamed register.
set clipboard+=unnamed

" Search as characters are entered
set incsearch

" Highlight search results
set hlsearch

" If a pattern contains an uppercase letter, searching is case sensitive,
" otherwise, it is not.
set ignorecase
set smartcase

" Emulate vim-surround. Commands: ys, cs, ds, S.
set surround

" NerdTree
set NERDTree

" Settings for https://plugins.jetbrains.com/plugin/15976-idea-which-key

" Enable which-key extension
set which-key

" Disable which-key timeout, i.e. show the menu until you press a key
set notimeout

" Show the menu also for default Vim actions like `gg` or `zz`.
" let g:WhichKey_ShowVimActions = "true"

" make the popup show up 'instantly'
let g:WhichKey_DefaultDelay = 0

" Emulates vim-multiple-cursors. Commands: <A-n>, <A-x>, <A-p>, g<A-n>
set multiple-cursors

" Add text object for function arguments: aa (around argument), ia (inside argument)
set argtextobj

" Add text object for entire buffer: ae (around buffer), ie (inside buffer)
set textobj-entire

" Replace with register content shortcut: https://github.com/vim-scripts/ReplaceWithRegister
set ReplaceWithRegister

" Intellimacs by default uses <A-X> to execute an action, if you want to use
" this key binding with multiple-cursors plugin add the following line
" (without ") at the end of your ~/.ideavimrc file
" vunmap <A-X>
