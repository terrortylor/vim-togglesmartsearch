" Filename: togglesmartsearch.vim
" Author: Alex Tylor

let s:save_cpo = &cpo
set cpo&vim

function! ToggleSmartSearch#Toggle() abort
  if g:toggle_smartsearch_state
    set noignorecase
    set nosmartcase
    let g:toggle_smartsearch_state = 0
  else
    echo "toggle on"
    set ignorecase
    set smartcase
    let g:toggle_smartsearch_state = 1
  endif
endfunction

function! ToggleSmartSearch#StatePretty()
  if g:toggle_smartsearch_state
    return g:toggle_smartsearch_state_on_value
  else
    return g:toggle_smartsearch_state_off_value
  endif
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
