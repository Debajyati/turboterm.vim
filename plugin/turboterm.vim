" Title: turboterm.vim
" Author: Debajyati Dey <https://github.com/Debajyati>
" Created: 25/08/2024
" License: GPL
" Description: Smart Terminal Integration for Vanilla Vim

if exists("g:loaded_turboterm") || !has("terminal")
  finish
endif
let g:loaded_turboterm = 1

" Commands to access the TurboToggle function
command! -nargs=+ TurboToggle call g:turboterm#TurboToggle(<f-args>) " (both agruments are strictly required)

" Terminal mapping for quickly going back to normal mode
tnoremap <C-n> <C-\><C-n>

