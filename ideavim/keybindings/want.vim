" Show TODOs
let g:WhichKeyDesc_Applications_Todo = "<leader>at todo"
nnoremap <leader>at    :action ActivateTODOToolWindow<CR>
vnoremap <leader>at    :action ActivateTODOToolWindow<CR>


""" IDE Submenu ---------------------------------
let g:WhichKeyDesc_Files_IDE = "<leader>fe +IDE"

" Reload .ideavimrc
let g:WhichKeyDesc_Files_IDE_ReloadIdeaVimRc = "<leader>feR reload-ideavimrc"
nnoremap <leader>feR    :source ~/.ideavimrc<CR>
vnoremap <leader>feR    <Esc>:source ~/.ideavimrc<CR>
""" ---------------------------------------------

" Copy file path
let g:WhichKeyDesc_Files_YankCopy_FilePath = "<leader>fyy file-path"
nnoremap <leader>fyy    :action CopyAbsolutePath<CR>
vnoremap <leader>fyy    :action CopyAbsolutePath<CR>

" Insert snippet
let g:WhichKeyDesc_Insertion_InsertSnippet = "<leader>is insert-snippet"
nnoremap <leader>is    :action InsertLiveTemplate<CR>
vnoremap <leader>is    <Esc>:action InsertLiveTemplate<CR>

" Jump to character (AceJump plugin required)
let g:WhichKeyDesc_JumpJoinSplit_JumpToCharacter = "<leader>jj jump-to-character"
nnoremap <leader>jj    :action AceAction<CR>
vnoremap <leader>jj    :action AceAction<CR>

" Jump to line (AceJump plugin required)
let g:WhichKeyDesc_JumpJoinSplit_JumpToLine = "<leader>jl jump-to-line"
nnoremap <leader>jl    :action AceLineAction<CR>
vnoremap <leader>jl    :action AceLineAction<CR>

" Activate terminal window
let g:WhichKeyDesc_Projects_OpenShell = "<leader>p! open-shell"
nnoremap <leader>p!    :action ActivateTerminalToolWindow<CR>
vnoremap <leader>p!    :action ActivateTerminalToolWindow<CR>

" Toggle between implementation file and its test file
let g:WhichKeyDesc_Projects_ToggleBetweenImplAndTestFile = "<leader>pa toggle-between-impl-and-test-file"
nnoremap <leader>pa    :action GotoTest<CR>
vnoremap <leader>pa    :action GotoTest<CR>


" Rerun tests
let g:WhichKeyDesc_Projects_RerunTets = "<leader>pT rerun-tests"
nnoremap <leader>pT    :action RerunTests<CR>
vnoremap <leader>pT    <Esc>:action RerunTests<CR>

" Inspect code
let g:WhichKeyDesc_Errors_InspectCode = "<leader>eL inspect-code"
nnoremap <leader>eL    :action InspectCode<CR>
vnoremap <leader>eL    :action InspectCode<CR>

" Run inspection by name
let g:WhichKeyDesc_Errors_RunInspectionByName = "<leader>eR run-inspection-by-name"
nnoremap <leader>eR    :action RunInspection<CR>
vnoremap <leader>eR    <Esc>:action RunInspection<CR>

" Resolve error
let g:WhichKeyDesc_Errors_ResolveError = "<leader>er resolve-error"
nnoremap <leader>er    :action ShowIntentionActions<CR>
vnoremap <leader>er    :action ShowIntentionActions<CR>

" Jump to class
let g:WhichKeyDesc_JumpJoinSplit_JumpToClass = "<leader>jc jump-to-class"
nnoremap <leader>jc   :action GotoClass<CR>
vnoremap <leader>jc   :action GotoClass<CR>

" Jump to element in current file
let g:WhichKeyDesc_JumpJoinSplit_JumpToFileStructure = "<leader>je jump-to-file-structure"
nnoremap <leader>je   :action FileStructurePopup<CR>
vnoremap <leader>je   :action FileStructurePopup<CR>

" Jump to symbol
let g:WhichKeyDesc_JumpJoinSplit_JumpToSymbol = "<leader>js jump-to-symbol"
nnoremap <leader>js    :action GotoSymbol<CR>
vnoremap <leader>js    :action GotoSymbol<CR>

" Go to code block start
let g:WhichKeyDesc_Leader_GotoCodeBlockStart = "<leader>[ goto-code-block-start"
nnoremap <leader>[    :action EditorCodeBlockStart<CR>
vnoremap <leader>[    <Esc>:action EditorCodeBlockStart<CR>

" Go to code block end
let g:WhichKeyDesc_Leader_GotoCodeBlockEnd = "<leader>] goto-code-block-end"
nnoremap <leader>]    :action EditorCodeBlockEnd<CR>
vnoremap <leader>]    <Esc>:action EditorCodeBlockEnd<CR>

" Run Anything
let g:WhichKeyDesc_Run_Anything = "<leader>Ra run-anything"
nnoremap <leader>Ra    :action RunAnything<CR>
vnoremap <leader>Ra    :action RunAnything<CR>

" Run class
let g:WhichKeyDesc_Run_Class = "<leader>Rc run-class"
nnoremap <leader>Rc    :action RunClass<CR>
vnoremap <leader>Rc    :action RunClass<CR>

" Kill (Stop application)
let g:WhichKeyDesc_Run_Kill = "<leader>Rk kill"
nnoremap <leader>Rk    :action Stop<CR>
vnoremap <leader>Rk    :action Stop<CR>

" Run
let g:WhichKeyDesc_Run_Run = "<leader>Rr run"
nnoremap <leader>Rr    :action Run<CR>
vnoremap <leader>Rr    :action Run<CR>

" Select configuration and run
let g:WhichKeyDesc_Run_SelectRunConfiguration = "<leader>Rs select-run-configuration"
nnoremap <leader>Rs    :action ChooseRunConfiguration<CR>
vnoremap <leader>Rs    :action ChooseRunConfiguration<CR>


" Search everywhere
let g:WhichKeyDesc_SearchSymbol_SearchEverywhere = "<leader>sE search-everywhere"
nnoremap <leader>sE    :action SearchEverywhere<CR>
vnoremap <leader>sE    :action SearchEverywhere<CR>

" Search in current file by using Intellij Search
let g:WhichKeyDesc_SearchSymbol_FindInFile = "<leader>sf find-in-file"
nnoremap <leader>sf    :action Find<CR>
vnoremap <leader>sf    :action Find<CR>

" Search and replace in current file by using Intellij Search
let g:WhichKeyDesc_SearchSymbol_ReplaceInFile = "<leader>sr replace-in-file"
nnoremap <leader>sr    :action Replace<CR>
vnoremap <leader>sr    :action Replace<CR>

" Toggle Gutter icons
let g:WhichKeyDesc_Toggles_GutterIcons = "<leader>tg gutter-icons"
nnoremap <leader>tg    :action EditorToggleShowGutterIcons<CR>
vnoremap <leader>tg    :action EditorToggleShowGutterIcons<CR>

" Toggle power save
let g:WhichKeyDesc_Toggles_PowerSave = "<leader>tp power-save"
nnoremap <leader>tp    :action TogglePowerSave<CR>
vnoremap <leader>tp    :action TogglePowerSave<CR>

" Hide all windows except the ones with code
let g:WhichKeyDesc_UiTogglesThemes_HideAllWindows = "<leader>Tm hide-all-windows"
nnoremap <leader>Tm    :action HideAllWindows<CR>
vnoremap <leader>Tm    :action HideAllWindows<CR>

" Toggle presentation mode
let g:WhichKeyDesc_UiTogglesThemes_PresentationMode = "<leader>Tp presentation-mode"
nnoremap <leader>Tp    :action TogglePresentationMode<CR>
vnoremap <leader>Tp    :action TogglePresentationMode<CR>

" Toggle presentation or distraction free mode
let g:WhichKeyDesc_UiTogglesThemes_ChooseViewMode = "<leader>TT choose-view-mode"
nnoremap <leader>TT    :action ChangeView<CR>
vnoremap <leader>TT    :action ChangeView<CR>

" Compile selected file, package or module
let g:WhichKeyDesc_Major_Compile_Compile = "<leader>mcC compile"
nnoremap <leader>mcC      :action Compile<CR>
vnoremap <leader>mcC      :action Compile<CR>

" Make project
let g:WhichKeyDesc_Major_Compile_CompileDirty = "<leader>mcc compile-dirty"
nnoremap <leader>mcc      :action CompileDirty<CR>
vnoremap <leader>mcc      :action CompileDirty<CR>


" View Breakpoints
let g:WhichKeyDesc_Major_Debug_ViewBreakpoints = "<leader>mdB view-breakpoints"
nnoremap <leader>mdB    :action ViewBreakpoints<CR>
vnoremap <leader>mdB    <Esc>:action ViewBreakpoints<CR>

" Toggle breakpoint
let g:WhichKeyDesc_Major_Debug_ToggleBreakpoint = "<leader>mdb toggle-breakpoint"
nnoremap <leader>mdb    :action ToggleLineBreakpoint<CR>
vnoremap <leader>mdb    <Esc>:action ToggleLineBreakpoint<CR>

" Clear all breakpoints
let g:WhichKeyDesc_Major_Debug_ClearAllBreakpoints = "<leader>mdC clear-all-breakpoints"
nnoremap <leader>mdC    :action Debugger.RemoveAllBreakpointsInFile<CR>
vnoremap <leader>mdC    <Esc>:action Debugger.RemoveAllBreakpointsInFile<CR>

" Continue (Go to next breakpoint). 'c' is the same as gdb.
let g:WhichKeyDesc_Major_Debug_Continue = "<leader>mdc continue"
nnoremap <leader>mdc    :action Resume<CR>
vnoremap <leader>mdc    <Esc>:action Resume<CR>

" Debug class
let g:WhichKeyDesc_Major_Debug_DebugClass = "<leader>mdD debug-class"
nnoremap <leader>mdD    :action DebugClass<CR>
vnoremap <leader>mdD    <Esc>:action DebugClass<CR>

" Debug
let g:WhichKeyDesc_Major_Debug_Debug = "<leader>mdd debug"
nnoremap <leader>mdd    :action Debug<CR>
vnoremap <leader>mdd    <Esc>:action Debug<CR>

" Next (Step over). 's' is the same as gdb
let g:WhichKeyDesc_Major_Debug_StepOver = "<leader>mdn step-over"
nnoremap <leader>mdn    :action StepOver<CR>
vnoremap <leader>mdn    <Esc>:action StepOver<CR>

" Step out (same as "finish" in gdb).
let g:WhichKeyDesc_Major_Debug_StepOut = "<leader>mdo step-out"
nnoremap <leader>mdo    :action StepOut<CR>
vnoremap <leader>mdo    <Esc>:action StepOut<CR>

" Select configuration and debug
let g:WhichKeyDesc_Major_Debug_SelectDebugConfiguration = "<leader>mdr select-debug-configuration"
nnoremap <leader>mdr    :action ChooseDebugConfiguration<CR>
vnoremap <leader>mdr    <Esc>:action ChooseDebugConfiguration<CR>

" Step (Step into). 's' is the same as gdb.
let g:WhichKeyDesc_Major_Debug_StepInto = "<leader>mds step-into"
nnoremap <leader>mds    :action StepInto<CR>
vnoremap <leader>mds    <Esc>:action StepInto<CR>


" Go to declaration
let g:WhichKeyDesc_Major_Goto_Declaration = "<leader>mgg declaration"
nnoremap <leader>mgg    :action GotoDeclaration<CR>
vnoremap <leader>mgg    <Esc>:action GotoDeclaration<CR>

" Go to implementation
let g:WhichKeyDesc_Major_Goto_Implementation = "<leader>mgi implementation"
nnoremap <leader>mgi    :action GotoImplementation<CR>
vnoremap <leader>mgi    <Esc>:action GotoImplementation<CR>

" Go to type declaration
let g:WhichKeyDesc_Major_Goto_TypeDeclaration = "<leader>mgt type-declaration"
nnoremap <leader>mgt    :action GotoTypeDeclaration<CR>
vnoremap <leader>mgt    <Esc>:action GotoTypeDeclaration<CR>

" Go to code block start
let g:WhichKeyDesc_Major_Goto_CodeBlockStart = "<leader>mg[ code-block-start"
nnoremap <leader>mg[    :action EditorCodeBlockStart<CR>
vnoremap <leader>mg[    <Esc>:action EditorCodeBlockStart<CR>

" Go to code block end
let g:WhichKeyDesc_Major_Goto_CodeBlockEnd = "<leader>mg] code-block-end"
nnoremap <leader>mg]    :action EditorCodeBlockEnd<CR>
vnoremap <leader>mg]    <Esc>:action EditorCodeBlockEnd<CR>

" Call hierarchy
let g:WhichKeyDesc_Major_Help_CallHierarchy = "<leader>mhc call-hierarchy"
nnoremap <leader>mhc      :action CallHierarchy<CR>
vnoremap <leader>mhc      <Esc>:action CallHierarchy<CR>

" Show implementation
let g:WhichKeyDesc_Major_Help_ShowImplementation = "<leader>mhH show-implementation"
nnoremap <leader>mhH      :action QuickImplementations<CR>
vnoremap <leader>mhH      <Esc>:action QuickImplementations<CR>

" Show documetation
let g:WhichKeyDesc_Major_Help_ShowDocumentation = "<leader>mhh show-documentation"
nnoremap <leader>mhh      :action QuickJavaDoc<CR>
vnoremap <leader>mhh      <Esc>:action QuickJavaDoc<CR>

" Inheritance hierarchy
let g:WhichKeyDesc_Major_Help_InheritanceHierarchy = "<leader>mhi inheritance-hierarchy"
nnoremap <leader>mhi      :action TypeHierarchy<CR>
vnoremap <leader>mhi      <Esc>:action TypeHierarchy<CR>

" Type Definition
let g:WhichKeyDesc_Major_Help_TypeDefinition = "<leader>mht type-definition"
nnoremap <leader>mht      :action QuickTypeDefinition<CR>
vnoremap <leader>mht      :action QuickTypeDefinition<CR>

" Show usages for symbol
let g:WhichKeyDesc_Major_Help_ShowUsages = "<leader>mhU show-usages"
nnoremap <leader>mhU      :action ShowUsages<CR>
vnoremap <leader>mhU      :action ShowUsages<CR>

" Find usages for symbol
let g:WhichKeyDesc_Major_Help_FindUsages = "<leader>mhu find-usages"
nnoremap <leader>mhu      :action FindUsages<CR>
vnoremap <leader>mhu      :action FindUsages<CR>


" Make project (build)
let g:WhichKeyDesc_Major_Project_CompileProject = "<leader>mpb compile-project"
nnoremap <leader>mpb    :action CompileDirty<CR>
vnoremap <leader>mpb    :action CompileDirty<CR>

" Create project
let g:WhichKeyDesc_Major_Project_CreateProject = "<leader>mpc create-project"
nnoremap <leader>mpc    :action NewProject<CR>
vnoremap <leader>mpc    :action NewProject<CR>

" Import project
let g:WhichKeyDesc_Major_Project_ImportProject = "<leader>mpi import-project"
nnoremap <leader>mpi    :action ImportProject<CR>
vnoremap <leader>mpi    :action ImportProject<CR>

" Open project
let g:WhichKeyDesc_Major_Project_OpenProject = "<leader>mpo open-project"
nnoremap <leader>mpo    :action WelcomeScreen.OpenProject<CR>
vnoremap <leader>mpo    <Esc>:action WelcomeScreen.OpenProject<CR>

" Run project
let g:WhichKeyDesc_Major_Project_RunProject = "<leader>mpr run-project"
nnoremap <leader>mpr    :action Run<CR>
vnoremap <leader>mpr    :action Run<CR>


" Code cleanup
let g:WhichKeyDesc_Major_Refactoring_CodeCleanup = "<leader>mrC code-cleanup"
nnoremap <leader>mrC      :action CodeCleanup<CR>
vnoremap <leader>mrC      :action CodeCleanup<CR>

" Create constructor
let g:WhichKeyDesc_Major_Refactoring_CreateConstructor = "<leader>mrc create-constructor"
nnoremap <leader>mrc      :action GenerateConstructor<CR>
vnoremap <leader>mrc      <Esc>:action GenerateConstructor<CR>

""" Extract Submenu ---------------------------------
let g:WhichKeyDesc_Major_Refactoring_CodeCleanup_Extract = "<leader>mre +extract"

" Extract method
let g:WhichKeyDesc_Major_Refactoring_CodeCleanup_Extract_Method = "<leader>mrem method"
nnoremap <leader>mrem    :action ExtractMethod<CR>
vnoremap <leader>mrem    <Esc>:action ExtractMethod<CR>

" Extract superclass
let g:WhichKeyDesc_Major_Refactoring_CodeCleanup_Extract_Superclass = "<leader>mres superclass"
nnoremap <leader>mres    :action ExtractSuperclass<CR>
vnoremap <leader>mres    <Esc>:action ExtractSuperclass<CR>
""" ---------------------------------------------

" Generate getter and setter
let g:WhichKeyDesc_Major_Refactoring_GenerateGetterSetter = "<leader>mrG generate-getter-setter"
nnoremap <leader>mrG      :action GenerateGetterAndSetter<CR>
vnoremap <leader>mrG      <Esc>:action GenerateGetterAndSetter<CR>

" Select what to generate
let g:WhichKeyDesc_Major_Refactoring_Generate = "<leader>mrg generate"
nnoremap <leader>mrg      :action Generate<CR>
vnoremap <leader>mrg      <Esc>:action Generate<CR>

" Implement Methods
let g:WhichKeyDesc_Major_Refactoring_ImplementMethods = "<leader>mrI implement-methods"
nnoremap <leader>mrI      :action ImplementMethods<CR>
vnoremap <leader>mrI      <Esc>:action ImplementMethods<CR>

" Optimize imports
let g:WhichKeyDesc_Major_Refactoring_OptimizeImports = "<leader>mri optimize-imports"
nnoremap <leader>mri      :action OptimizeImports<CR>
vnoremap <leader>mri      <Esc>:action OptimizeImports<CR>

" Create a new Element.
let g:WhichKeyDesc_Major_Refactoring_NewElement = "<leader>mrN new-element"
nnoremap <leader>mrN      :action NewElement<CR>
vnoremap <leader>mrN      :action NewElement<CR>

" Create a new class. You can also create enum, interface and more.
let g:WhichKeyDesc_Major_Refactoring_NewClass = "<leader>mrn new-class"
nnoremap <leader>mrn      :action NewClass<CR>
vnoremap <leader>mrn      :action NewClass<CR>

" Choose a refactoring action
let g:WhichKeyDesc_Major_Refactoring_ChooseRefactoringAction = "<leader>mrR choose-refactoring-action"
nnoremap <leader>mrR      :action Refactorings.QuickListPopupAction<CR>
vnoremap <leader>mrR      <Esc>:action Refactorings.QuickListPopupAction<CR>

" Rename symbol
let g:WhichKeyDesc_Major_Refactoring_RenameSymbol = "<leader>mrr rename-symbol"
nnoremap <leader>mrr      :action RenameElement<CR>
vnoremap <leader>mrr      :action RenameElement<CR>
