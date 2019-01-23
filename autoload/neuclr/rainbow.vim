scriptencoding utf-8

try
  let s:plt = neutil#palette#Palette()
catch /^Vim\%((\a\+)\)\=:E/
  finish
endtry

function! neuclr#rainbow#Highlight() abort
  if !exists('g:rainbow_conf')
    let g:rainbow_conf = {}
  endif

  if !has_key(g:rainbow_conf, 'guifgs')
    let g:rainbow_conf['guifgs'] =
          \ [s:plt.red.g, s:plt.orange.g, s:plt.green.g, s:plt.blue.g]
  endif

  if !has_key(g:rainbow_conf, 'ctermfgs')
    let g:rainbow_conf['ctermfgs'] =
          \ [s:plt.red.c, s:plt.orange.c, s:plt.green.c, s:plt.blue.c]
  endif
endfunction
