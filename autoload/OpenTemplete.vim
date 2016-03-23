"=============================================================================
" File: OpenTemplete.vim
" Author: chakku
" Created: 2016-03-23
"=============================================================================

scriptencoding utf-8

if !exists('g:loaded_OpenTemplete')
    finish
endif
let g:loaded_OpenTemplete = 1

let s:save_cpo = &cpo
set cpo&vim

"自身のディレクトリへのパス
let g:OpenTemplete#source_dir = expand('<sfile>:p:h')
"テンプレートファイルの置いてあるディレクトリへのパス
let g:OpenTemplete#templete_dir = g:OpenTemplete#source_dir . '/TempleteFile/'
"テンプレートファイルへのパス
let g:OpenTemplete#templete_file = g:OpenTemplete#templete_dir . 'templete.' . expand('%:e')

function! OpenTemplete#Main() abort
"テンプレートファイルの中身
    if expand('%:e')==''
        echoerr "拡張子が不明なためテンプレートが開けない死ね"
        return
    endif
    let g:OpenTemplete#templete = readfile(g:OpenTemplete#templete_file)
    let g:OpenTemplete#templete_rev = reverse(g:OpenTemplete#templete)
    for str in g:OpenTemplete#templete_rev
        call append(0,str)
    endfor
endfunction


let &cpo = s:save_cpo
unlet s:save_cpo
