# vim-togglesmartsearch
This plugin is used to toggle the following two vim configuration options, and display the state using a custom string when the state is polled:
* ignorecase
* smartsearch

# Why?
Case insensative searching is really useful, as is using the 'smartcase' options to easily find text.
Hoever I like the ability to toggle it on and off, as such I wanted a way to display the state in [lightline](https://github.com/itchyny/lightline.vim).

# Default state, and enabeling on start up
By default this plugin does nothing.
To set both 'ignorecase' and 'smartsearch' on start up add the following into you init.vim:
'''
let g:toggle_smartsearch_state = 1
'''

# Lightline example config
```
let g:lightline = {
      \ 'colorscheme': 'tender',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified' ] ],
      \   'right': [ [ 'lineinfo' ],
      \              [ 'percent' ],
      \              [ 'search_case_sensativity_state', 'fileformat', 'fileencoding', 'filetype' ] ]
      \ },
      \ 'component_function': {
      \   'search_case_sensativity_state': 'ToggleSmartSearch#StatePretty'
      \ },
      \ }
```
