scriptencoding utf-8

"************************************************************ Initialization{{{
if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name='neuclr'

if !(has('termguicolors') && &termguicolors)
      \ && !has('gui_running') && &t_Co != 256
  finish
endif
"}}}

"******************************************************************* Palette{{{
try
  let s:plt = neutil#palette#Palette()
catch /^Vim\%((\a\+)\)\=:E/
  finish
endtry
"}}}

"********************************************************** Highlight Groups{{{
call neutil#palette#Highlight('NeuBgS', 'NONE', s:plt.bgs)
call neutil#palette#Highlight('NeuBgM', 'NONE', s:plt.bgm)
call neutil#palette#Highlight('NeuBgH', 'NONE', s:plt.bgh)

call neutil#palette#Highlight('NeuFgS', s:plt.fgs)
call neutil#palette#Highlight('NeuFgM', s:plt.fgm)
call neutil#palette#Highlight('NeuFgH', s:plt.fgh)

call neutil#palette#Highlight('NeuGray', s:plt.gray)
call neutil#palette#Highlight('NeuRed', s:plt.red)
call neutil#palette#Highlight('NeuOrange', s:plt.orange)
call neutil#palette#Highlight('NeuYellow', s:plt.yellow)
call neutil#palette#Highlight('NeuGreen', s:plt.green)
call neutil#palette#Highlight('NeuCyan', s:plt.cyan)
call neutil#palette#Highlight('NeuBlue', s:plt.blue)
call neutil#palette#Highlight('NeuPurple', s:plt.purple)

call neutil#palette#Highlight('NeuGrayBold', s:plt.gray, 'NONE', 'bold')
call neutil#palette#Highlight('NeuRedBold', s:plt.red, 'NONE', 'bold')
call neutil#palette#Highlight('NeuOrangeBold', s:plt.orange, 'NONE', 'bold')
call neutil#palette#Highlight('NeuYellowBold', s:plt.yellow, 'NONE', 'bold')
call neutil#palette#Highlight('NeuGreenBold', s:plt.green, 'NONE', 'bold')
call neutil#palette#Highlight('NeuCyanBold', s:plt.cyan, 'NONE', 'bold')
call neutil#palette#Highlight('NeuBlueBold', s:plt.blue, 'NONE', 'bold')
call neutil#palette#Highlight('NeuPurpleBold', s:plt.purple, 'NONE', 'bold')
"}}}

"******************************************************************* Colorscheme
" Big Bang!
call neutil#palette#Highlight('Normal', s:plt.fgm, s:plt.bgm)

"******************************************************************* General{{{
call neutil#palette#Highlight('ColorColumn', 'NONE', s:plt.bgs)
call neutil#palette#Highlight('Comment', s:plt.gray, 'NONE', 'italic')
call neutil#palette#Highlight('Cursor', 'NONE', 'NONE', 'inverse')
call neutil#palette#Highlight('Error', s:plt.red, 'bg', 'bold,inverse')
call neutil#palette#Highlight('ErrorMsg', 'bg', s:plt.red, 'bold')
call neutil#palette#Highlight('Folded', s:plt.bgs, 'bg', 'italic')
call neutil#palette#Highlight('IncSearch', s:plt.orange, 'bg', 'inverse')
call neutil#palette#Highlight('Search', s:plt.yellow, 'bg', 'inverse')
call neutil#palette#Highlight('SignColumn', 'NONE', 'bg')
call neutil#palette#Highlight('StatusLine', s:plt.fgm, s:plt.bgh)
call neutil#palette#Highlight('StatusLineNC', s:plt.bgh, s:plt.fgm, 'inverse')
call neutil#palette#Highlight('TabLineFill', 'fg', s:plt.bgh)
call neutil#palette#Highlight('Todo', 'fg', 'bg', 'bold,italic')
call neutil#palette#Highlight('Visual', 'NONE', s:plt.bgs, 'inverse')
call neutil#palette#Highlight('WildMenu', s:plt.blue, s:plt.bgs, 'bold')

highlight! link Conceal NeuBlue
highlight! link CursorLineNr NeuYellow
highlight! link Directory NeuGreenBold
highlight! link FoldColumn NeuGray
highlight! link LineNr NeuGray
highlight! link ModeMsg NeuYellowBold
highlight! link MoreMsg NeuYellowBold
highlight! link NonText NeuGray
highlight! link Question NeuOrangeBold
highlight! link Special NeuOrange
highlight! link SpecialKey NeuGray
highlight! link TabLineSel NeuGreen
highlight! link Title NeuGreenBold
highlight! link WarningMsg NeuRedBold

highlight! link iCursor Cursor
highlight! link lCursor Cursor
highlight! link vCursor Cursor
highlight! link CursorLine ColorColumn
highlight! link CursorColumn ColorColumn
highlight! link MatchParen ColorColumn
highlight! link TabLine TabLineFill
highlight! link VertSplit Normal
highlight! link VisualNOS Visual
"}}}

"**************************************************************** Popup Menu{{{
call neutil#palette#Highlight('Pmenu', s:plt.fgm, s:plt.bgs)
call neutil#palette#Highlight('PmenuSbar', 'NONE', s:plt.bgs)
call neutil#palette#Highlight('PmenuSel', s:plt.bgs, s:plt.blue, 'bold')
call neutil#palette#Highlight('PmenuThumb', 'NONE', s:plt.bgs)
"}}}

"************************************************************ Generic Syntax{{{
highlight! link Boolean NeuPurple
highlight! link Character NeuPurple
highlight! link Conditional NeuRed
highlight! link Constant NeuPurple
highlight! link Define NeuCyan
highlight! link Exception NeuRed
highlight! link Float NeuPurple
highlight! link Function NeuGreenBold
highlight! link Include NeuCyan
highlight! link Identifier NeuBlue
highlight! link Keyword NeuRed
highlight! link Label NeuRed
highlight! link Macro NeuCyan
highlight! link Number NeuPurple
highlight! link PreCondit NeuCyan
highlight! link PreProc NeuCyan
highlight! link Repeat NeuRed
highlight! link Statement NeuRed
highlight! link StorageClass NeuOrange
highlight! link String NeuGreen
highlight! link Structure NeuCyan
highlight! link Type NeuYellow
highlight! link Typedef NeuYellow

highlight! link Operator Normal
"}}}


"********************************************************************* Diffs{{{
call neutil#palette#Highlight('DiffAdd', s:plt.green, 'bg', 'inverse')
call neutil#palette#Highlight('DiffChange', s:plt.cyan, 'bg', 'inverse')
call neutil#palette#Highlight('DiffDelete', s:plt.red, 'bg', 'inverse')
call neutil#palette#Highlight('DiffText', s:plt.yellow, 'bg', 'inverse')
"}}}

"****************************************************************** Spelling{{{
call neutil#palette#Highlight('SpellBad', 'NONE', 'NONE', 'undercurl', s:plt.blue)
call neutil#palette#Highlight('SpellCap', 'NONE', 'NONE', 'undercurl', s:plt.red)
call neutil#palette#Highlight('SpellLocal', 'NONE', 'NONE', 'undercurl', s:plt.cyan)
call neutil#palette#Highlight('SpellRare', 'NONE', 'NONE', 'undercurl', s:plt.purple)
"}}}
