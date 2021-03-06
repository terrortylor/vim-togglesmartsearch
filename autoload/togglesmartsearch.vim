" Filename: togglesmartsearch.vim
" Author: Alex Tylor

let s:save_cpo = &cpo
set cpo&vim

function! togglesmartsearch#toggle() abort
  if g:toggle_smartsearch_state
    set noignorecase
    set nosmartcase
    let g:toggle_smartsearch_state = 0
  else
    set ignorecase
    set smartcase
    let g:toggle_smartsearch_state = 1
  endif
endfunction

function! togglesmartsearch#statepretty()
  if g:toggle_smartsearch_state
    return g:toggle_smartsearch_state_on_value
  else
    return g:toggle_smartsearch_state_off_value
  endif
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
