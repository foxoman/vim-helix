" helix-boo.vim - a Vim/Neovim color scheme
if exists("syntax_on")
  syntax reset
endif

" Enable true color support
if has('termguicolors')
  set termguicolors
endif


let g:colors_name = "helix-boo"

" Define colors
let s:berry = "#3A2A4D"
let s:berry_fade = "#5A3D6E"
let s:berry_dim = "#47345E"
let s:berry_saturated = "#2B1C3D"
let s:berry_desaturated = "#886C9C"
let s:bubblegum = "#D678B5"
let s:gold = "#E3C0A8"
let s:lilac = "#C7B8E0"
let s:mint = "#7FC9AB"
let s:violet = "#C78DFC"

" Helper function for highlighting
function! s:HL(group, fg, bg, gui)
  let l:cmd = 'highlight ' . a:group
  if a:fg != ''
    let l:cmd .= ' guifg=' . a:fg
  endif
  if a:bg != ''
    let l:cmd .= ' guibg=' . a:bg
  endif
  if a:gui != ''
    let l:cmd .= ' gui=' . a:gui
  endif
  execute l:cmd
endfunction

call s:HL('Normal', s:lilac, s:berry, '')
call s:HL('NonText', s:berry_dim, s:berry_dim, '')
call s:HL('ColorColumn', 'NONE', s:berry_fade, '')

" Syntax Highlighting
call s:HL('Comment', s:berry_desaturated, '', '')
call s:HL('Constant', s:gold, '', '')
call s:HL('String', s:gold, '', '')
call s:HL('Function', s:mint, '', '')
call s:HL('Statement', s:bubblegum, '', '')
call s:HL('Conditional', s:bubblegum, '', '')
call s:HL('Repeat', s:bubblegum, '', '')
call s:HL('Label', s:gold, '', '')
call s:HL('Operator', s:bubblegum, '', '')
call s:HL('Keyword', s:bubblegum, '', '')
call s:HL('Exception', s:bubblegum, '', '')
call s:HL('PreProc', s:mint, '', '')
call s:HL('Include', s:mint, '', '')
call s:HL('Define', s:mint, '', '')
call s:HL('Macro', s:bubblegum, '', '')
call s:HL('Type', s:violet, '', '')
call s:HL('Variable', s:lilac, '', '')
call s:HL('Identifier', s:lilac, '', '')

" UI Components
call s:HL('CursorLine', '', s:berry_dim, '')
call s:HL('CursorLineNr', s:lilac, '', '')
call s:HL('LineNr', s:berry_desaturated, '', '')
call s:HL('Pmenu', s:lilac, s:berry_saturated, '')
call s:HL('PmenuSel', s:mint, s:berry_dim, '')
call s:HL('PmenuSbar', '', s:berry_fade, '')
call s:HL('PmenuThumb', '', s:berry_desaturated, '')
call s:HL('MatchParen', s:bubblegum, s:berry_dim, 'bold')
call s:HL('VertSplit', s:berry_saturated, s:berry, '')
call s:HL('TabLine', s:berry_desaturated, s:berry, '')
call s:HL('TabLineSel', s:mint, s:berry_saturated, '')
call s:HL('TabLineFill', '', s:berry, '')
call s:HL('WildMenu', s:mint, s:berry_dim, '')
call s:HL('FloatBorder', s:berry_desaturated, s:berry, '')
call s:HL('NormalFloat', '', s:berry_saturated, '')
call s:HL('Title', s:gold, '', 'bold')
call s:HL('Visual', '', s:berry_dim, '')
call s:HL('VisualNOS', '', s:berry_dim, '')
call s:HL('WarningMsg', s:gold, '', '')
call s:HL('ErrorMsg', s:bubblegum, s:berry_dim, 'bold')

" Diagnostic Highlighting (for Neovim)
call s:HL('DiagnosticError', s:bubblegum, '', '')
call s:HL('DiagnosticWarn', s:gold, '', '')
call s:HL('DiagnosticInfo', s:lilac, '', '')
call s:HL('DiagnosticHint', s:mint, '', '')
call s:HL('DiagnosticUnderlineError', '', '', 'undercurl')
call s:HL('DiagnosticUnderlineWarn', '', '', 'undercurl')
call s:HL('DiagnosticUnderlineInfo', '', '', 'undercurl')
call s:HL('DiagnosticUnderlineHint', '', '', 'undercurl')

" General enhancements that benefit Nim (and most languages)
call s:HL('PreProc', s:mint, '', '')         " Preprocessor statements
call s:HL('Type', s:violet, '', '')          " Types, including Nim's var, let, const, etc.
call s:HL('Special', s:violet, '', '')       " Special tokens, which might include Nim's annotations
call s:HL('SpecialComment', s:berry_desaturated, '', '') " Special comments (doc comments in Nim)
call s:HL('Tag', s:gold, '', '')             " Tags, could be useful for specific Nim syntax

" Fixing Selection Highlight

call s:HL('Visual', 'NONE', s:berry_fade, '')
call s:HL('CursorLine', 'NONE', s:berry_dim, '')

" Highlight matching parentheses
call s:HL('MatchParen', s:mint, 'NONE', 'bold')

" Adjusting SignColumn to match the theme's background
call s:HL('SignColumn', 'NONE', s:berry, '')


" Ensure background color is set correctly for transparent backgrounds
set background=dark

" Telling Vim that this script sets a colorscheme
let g:colors_name = "helix-boo"


" Tree Sitter Support

" Define the helix-boo color palette
hi! berry guifg=#3A2A4D
hi! berry_fade guifg=#5A3D6E
hi! berry_dim guifg=#47345E
hi! berry_saturated guifg=#2B1C3D
hi! berry_desaturated guifg=#886C9C
hi! bubblegum guifg=#D678B5
hi! gold guifg=#E3C0A8
hi! lilac guifg=#C7B8E0
hi! mint guifg=#7FC9AB
hi! violet guifg=#C78DFC

" Link Tree-sitter syntax groups to the helix-boo colors
hi! link TSComment berry_desaturated
hi! link TSConstant gold
hi! link TSConstBuiltin violet
hi! link TSConstMacro lilac
hi! link TSConstructor mint
hi! link TSError bubblegum
hi! link TSException bubblegum
hi! link TSField lilac
hi! link TSFunction violet
hi! link TSFuncBuiltin mint
hi! link TSFuncMacro bubblegum
hi! link TSInclude berry_desaturated
hi! link TSKeyword bubblegum
hi! link TSLabel gold
hi! link TSMethod violet
hi! link TSNamespace berry_desaturated
hi! link TSOperator berry_fade
hi! link TSParameter lilac
hi! link TSProperty gold
hi! link TSPunctDelimiter berry_desaturated
hi! link TSPunctBracket berry_dim
hi! link TSPunctSpecial mint
hi! link TSTag bubblegum
hi! link TSText lilac
hi! link TSType violet
hi! link TSVariable berry_saturated
hi! link TSVariableBuiltin mint


" Using Lua in Vimscript to set Tree-sitter highlights
hi! MacroHighlight guifg=#00FF00
" Assuming 'function.macro' is a Tree-sitter highlight group for macros
hi! link TSFunctionMacro MacroHighlight
