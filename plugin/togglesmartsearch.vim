" Filename: togglesmartsearch.vim
" Author: Alex Tylor

let s:save_cpo = &cpo
set cpo&vim

if exists('g:loaded_toggle_smartsearch') || v:version < 700
  finish
endif
let g:loaded_toggle_smartsearch = 1

" If not set by user then initialise in off state
if !exists('g:toggle_smartsearch_state')
  let g:toggle_smartsearch_state = 0
endif

if !exists('g:toggle_smartsearch_state_on_value')
  let g:toggle_smartsearch_state_on_value = "*aA*"
endif

if !exists('g:toggle_smartsearch_state_off_value')
  let g:toggle_smartsearch_state_off_value = "Aa"
endif


 augroup togglesmartsearch
   autocmd!
   " if user set state to on, then toggle off and call toggle func
   autocmd VimEnter * if g:toggle_smartsearch_state
        \ | let g:toggle_smartsearch_state = 0 | call ToggleSmartSearch#Toggle()
        \ | endif
 augroup END

let &cpo = s:save_cpo
unlet s:save_cpo
