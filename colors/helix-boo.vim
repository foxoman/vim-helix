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

call s:HL('Normal', s:lilac, s:berry_dim, '')
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



" Ensure background color is set correctly for transparent backgrounds
set background=dark

" Telling Vim that this script sets a colorscheme
let g:colors_name = "helix-boo"





lua << EOF
local colors = {
  berry = "#3A2A4D",
  berry_fade = "#5A3D6E",
  berry_dim = "#47345E",
  berry_saturated = "#2B1C3D",
  berry_desaturated = "#886C9C",
  bubblegum = "#D678B5",
  gold = "#E3C0A8",
  lilac = "#C7B8E0",
  mint = "#7FC9AB",
  violet = "#C78DFC",
}

-- Function to set Tree-sitter highlights
local function set_ts_highlight(group, properties)
  vim.api.nvim_set_hl(0, group, properties)
end

-- Define Tree-sitter highlights
local ts_highlights = {
  { "TSComment", { fg = colors.berry_desaturated } },
  { "TSAnnotation", { fg = colors.mint } },
  { "TSAttribute", { fg = colors.violet } },
  { "TSConstructor", { fg = colors.violet } },
  { "TSConstant", { fg = colors.gold } },
  { "TSConstBuiltin", { fg = colors.gold } },
  { "TSConstMacro", { fg = colors.gold } },
  { "TSError", { fg = colors.bubblegum } },
  { "TSException", { fg = colors.bubblegum } },
  { "TSField", { fg = colors.lilac } },
  { "TSFloat", { fg = colors.gold } },
  { "TSFunction", { fg = colors.mint } },
  { "TSFuncBuiltin", { fg = colors.mint } },
  { "TSFuncMacro", { fg = colors.mint } },
  { "TSInclude", { fg = colors.violet } },
  { "TSKeyword", { fg = colors.bubblegum } },
  { "TSKeywordFunction", { fg = colors.bubblegum } },
  { "TSLabel", { fg = colors.lilac } },
  { "TSMethod", { fg = colors.mint } },
  { "TSNamespace", { fg = colors.lilac } },
  { "TSNumber", { fg = colors.gold } },
  { "TSOperator", { fg = colors.bubblegum } },
  { "TSParameter", { fg = colors.lilac } },
  { "TSParameterReference", { fg = colors.lilac } },
  { "TSProperty", { fg = colors.lilac } },
  { "TSPunctDelimiter", { fg = colors.lilac } },
  { "TSPunctBracket", { fg = colors.lilac } },
  { "TSPunctSpecial", { fg = colors.lilac } },
  { "TSRepeat", { fg = colors.bubblegum } },
  { "TSString", { fg = colors.gold } },
  { "TSStringRegex", { fg = colors.gold } },
  { "TSStringEscape", { fg = colors.violet } },
  { "TSSymbol", { fg = colors.lilac } },
  { "TSType", { fg = colors.violet } },
  { "TSTypeBuiltin", { fg = colors.violet } },
  { "TSVariable", { fg = colors.lilac } },
  { "TSVariableBuiltin", { fg = colors.violet } },
  { "TSTag", { fg = colors.gold } },
  { "TSTagDelimiter", { fg = colors.lilac } },
  { "TSText", { fg = colors.lilac } },
  { "TSStrong", { fg = colors.lilac, bold = true } },
  { "TSEmphasis", { fg = colors.lilac, italic = true } },
  { "TSUnderline", { fg = colors.lilac, underline = true } },
  { "TSStrike", { fg = colors.lilac, strikethrough = true } },
  { "TSTitle", { fg = colors.gold, bold = true } },
  { "TSLiteral", { fg = colors.gold } },
  { "TSURI", { fg = colors.violet, underline = true } },
  -- Add any language-specific groups here
}

-- Apply Tree-sitter highlights
for _, hl in ipairs(ts_highlights) do
  set_ts_highlight(hl[1], hl[2])
end
EOF
