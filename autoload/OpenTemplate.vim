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
"let g:OpenTemplate#Template_dir = g:OpenTemplate#source_dir . '/TemplateFile/'
let g:OpenTemplate#Template_dir = get(g:,'OpenTemplate#Template_dir',g:OpenTemplate#source_dir.'/TemplateFile')

"自分でテンプレートファイルの場所を設定できるようにする

function! OpenTemplate#Main() abort
    "echoerr "TEST MODE"
    "==#:大文字と小文字の区別をする比較演算子
    if expand('%:e')==#''
        echoerr "拡張子が不明なためテンプレートが開けません.編集ファイルの拡張子を確認してください."
        return
    endif
    "テンプレートファイルへのパス
    let g:OpenTemplate#Template_file = expand(g:OpenTemplate#Template_dir) . '/template.' . expand('%:e')
    if !filereadable(g:OpenTemplate#Template_file)
        echoerr "テンプレートファイルが存在しません.編集ファイルと同じ拡張子のテンプレートが存在しているか確認してください."
        return
    endif
    call append(0,readfile(g:OpenTemplate#Template_file))
endfunction


let &cpo = s:save_cpo
unlet s:save_cpo
