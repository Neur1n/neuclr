scriptencoding utf-8

if exists('g:loaded_neuclr')
  finish
endif
let g:loaded_neuclr = 1

let s:save_cpo = &cpoptions
set cpoptions&vim

augroup neuclr
  autocmd!
  autocmd FileType * call neuclr#Highlight()
augroup END

let &cpoptions = s:save_cpo
unlet s:save_cpo
