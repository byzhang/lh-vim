"=============================================================================
" $Id$
" File:         autoload/lh/dev/cpp/function.vim                  {{{1
" Author:       Luc Hermitte <EMAIL:hermitte {at} free {dot} fr>
"		<URL:http://code.google.com/p/lh-vim/>
" Version:      001
" Created:      23rd Aug 2011
" Last Update:  $Date$
"------------------------------------------------------------------------
" Description:
"       «description»
" 
"------------------------------------------------------------------------
" Installation:
"       Drop this file into {rtp}/autoload/lh/dev/cpp
"       Requires Vim7+
"       «install details»
" History:      «history»
" TODO:         «missing features»
" }}}1
"=============================================================================

let s:cpo_save=&cpo
set cpo&vim
"------------------------------------------------------------------------
" ## Misc Functions     {{{1
" # Version {{{2
let s:k_version = 1
function! lh#dev#cpp#function#version()
  return s:k_version
endfunction

" # Debug   {{{2
let s:verbose = 0
function! lh#dev#cpp#function#verbose(...)
  if a:0 > 0 | let s:verbose = a:1 | endif
  return s:verbose
endfunction

function! s:Verbose(expr)
  if s:verbose
    echomsg a:expr
  endif
endfunction

function! lh#dev#cpp#function#debug(expr)
  return eval(a:expr)
endfunction


"------------------------------------------------------------------------
" ## Exported functions {{{1

"------------------------------------------------------------------------
" ## Internal functions {{{1

" [ ] arrays
" [ ] array-references
" [ ] function-pointers
" [X] templates
" [/] type
" [X] const
" [ ] in/out
" [X] pointer/reference
" [X] multiple tokens types (e.g. "unsigned long long int")
" [ ] default value
" [X] new line before (when analysing non ctags-signatures, but real text)
" [ ] TU
function! lh#dev#cpp#function#_build_param_decl(param)
  if a:param.dir == 'in'
    let type = lh#dev#cpp#types#ConstCorrectType(a:param.type)
  else " if a:param.dir == 'out'
    let type = a:param.type . '&'
  endif
  return type . ' ' . a:param.formal
endfunction

function! lh#dev#cpp#function#_build_param_call(param)
  return a:param.name
endfunction
"------------------------------------------------------------------------
let &cpo=s:cpo_save
"=============================================================================
" vim600: set fdm=marker:
