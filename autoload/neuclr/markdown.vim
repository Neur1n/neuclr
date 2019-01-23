scriptencoding utf-8

try
  let s:plt = neutil#palette#Palette()
catch /^Vim\%((\a\+)\)\=:E/
  finish
endtry

function! neuclr#markdown#Highlight() abort
  call neutil#palette#Highlight('markdownItalic', s:plt.fgh, 'NONE', 'italic')
  call neutil#palette#Highlight('markdownLinkText', s:plt.gray, 'none', 'underline')

  highlight! link markdownCode NeuCyan
  highlight! link markdownCodeBlock NeuCyan
  highlight! link markdownCodeDelimiter NeuCyan

  highlight! link markdownH1 NeuGreenBold
  highlight! link markdownH2 NeuGreenBold
  highlight! link markdownH3 NeuYellowBold
  highlight! link markdownH4 NeuYellowBold
  highlight! link markdownH5 NeuYellow
  highlight! link markdownH6 NeuYellow
  highlight! link markdownHeadingRule NeuGray

  highlight! link markdownHeadingDelimiter NeuOrange
  highlight! link markdownLinkDelimiter NeuFgH
  highlight! link markdownLinkTextDelimiter NeuFgH
  highlight! link markdownUrlDelimiter NeuFgS
  highlight! link markdownUrlTitleDelimiter NeuGreen

  highlight! link markdownBlockquote NeuGray
  highlight! link markdownListMarker NeuGray
  highlight! link markdownOrderedListMarker NeuGray
  highlight! link markdownRule NeuGray
  highlight! link markdownUrl NeuPurple

  highlight! link markdownIdDeclaration markdownLinkText
endfunction
