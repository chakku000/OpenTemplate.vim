"=============================================================================
" File: OpenTemplete.vim
" Author: chakku
" Created: 2016-03-23
"=============================================================================

scriptencoding utf-8

if exists('g:loaded_OpenTemplete')
    finish
endif
let g:loaded_OpenTemplete = 1

let s:save_cpo = &cpo
set cpo&vim

command! OpenTemplete :call OpenTemplete#Main()

let &cpo = s:save_cpo
unlet s:save_cpo
