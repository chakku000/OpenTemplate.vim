"=============================================================================
" File: OpenTemplate.vim
" Author: chakku
" Created: 2016-03-23
"=============================================================================

scriptencoding utf-8

if !exists('g:loaded_OpenTemplate')
    finish
endif
let g:loaded_OpenTemplate = 1

let s:save_cpo = &cpo
set cpo&vim

"自身のディレクトリへのパス
let g:OpenTemplate#source_dir = expand('<sfile>:p:h')
"テンプレートファイルの置いてあるディレクトリへのパス
let g:OpenTemplate#Template_dir = g:OpenTemplate#source_dir . '/TemplateFile/'
"テンプレートファイルへのパス
let g:OpenTemplate#Template_file = g:OpenTemplate#Template_dir . 'template.' . expand('%:e')

function! OpenTemplate#Main() abort
"テンプレートファイルの中身
    if expand('%:e')==''
        echoerr "拡張子が不明なためテンプレートが開けない死ね"
        return
    endif
    let g:OpenTemplate#Template = readfile(g:OpenTemplate#Template_file)
    let g:OpenTemplate#Template_rev = reverse(g:OpenTemplate#Template)
    for str in g:OpenTemplate#Template_rev
        call append(0,str)
    endfor
endfunction


let &cpo = s:save_cpo
unlet s:save_cpo
