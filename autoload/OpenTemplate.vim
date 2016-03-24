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

function! OpenTemplate#Main() abort
"テンプレートファイルの中身
    "echoerr "TEST MODE"
    "==#:大文字と小文字の区別をする比較演算子
    if expand('%:e')==#''
        echoerr "拡張子が不明なためテンプレートが開けない死ね"
        return
    endif
    "テンプレートファイルへのパス
    let g:OpenTemplate#Template_file = g:OpenTemplate#Template_dir . 'template.' . expand('%:e')
    if !filereadable(g:OpenTemplate#Template_file)
        echoerr "テンプレートファイルが存在しない死ね"
        return
    endif
    call append(0,readfile(g:OpenTemplate#Template_file))
endfunction


let &cpo = s:save_cpo
unlet s:save_cpo
