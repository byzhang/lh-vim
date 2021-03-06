"=============================================================================
" $Id$
" File:		mk-lh-lib.vim
" Author:	Luc Hermitte <EMAIL:hermitte {at} free {dot} fr>
"		<URL:http://code.google.com/p/lh-vim/>
" Version:	2.2.2
let s:version = '2.2.2'
" Created:	06th Nov 2007
" Last Update:	$Date$
"------------------------------------------------------------------------
cd <sfile>:p:h
try 
  let save_rtp = &rtp
  let &rtp = expand('<sfile>:p:h:h').','.&rtp
  exe '22,$MkVimball! lh-vim-lib-'.s:version
  set modifiable
  set buftype=
finally
  let &rtp = save_rtp
endtry
finish
autoload/lh/askvim.vim
autoload/lh/buffer.vim
autoload/lh/buffer/dialog.vim
autoload/lh/command.vim
autoload/lh/common.vim
autoload/lh/encoding.vim
autoload/lh/env.vim
autoload/lh/event.vim
autoload/lh/float.vim
autoload/lh/graph/tsort.vim
autoload/lh/list.vim
autoload/lh/menu.vim
autoload/lh/option.vim
autoload/lh/path.vim
autoload/lh/position.vim
autoload/lh/syntax.vim
autoload/lh/visual.vim
doc/lh-vim-lib.txt
macros/menu-map.vim
mkVba/mk-lh-vim-lib.vim
plugin/let.vim
plugin/lhvl.vim
plugin/ui-functions.vim
plugin/words_tools.vim
tests/lh/function.vim
tests/lh/list.vim
tests/lh/path.vim
tests/lh/test-Fargs2String.vim
tests/lh/test-askmenu.vim
tests/lh/test-command.vim
tests/lh/test-menu-map.vim
tests/lh/test-toggle-menu.vim
tests/lh/topological-sort.vim
