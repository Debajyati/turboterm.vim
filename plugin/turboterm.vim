" Title: turboterm.vim
" Author: Debajyati Dey <https://github.com/Debajyati>
" Created: 25/08/2024
" License: GPL
" Description: Smart Terminal Integration for Vanilla Vim

if exists("g:loaded_turboterm") || !has("terminal")
  finish
endif
let g:loaded_turboterm = 1

let g:turboterm_default_dir = "down"
let g:turboterm_default_hor_dir = "down"
let g:turboterm_default_vert_dir = "right"

let g:turboterm_default_winsize = "NO_RESIZE"

" Commands to access the TurboToggle function
command! -nargs=+ TurboToggle call g:turboterm#TurboToggle(<f-args>) " (both agruments are strictly required)
" Following commands take no arguments (utililizing global variables)
" default functionality can be overridden by just changing the variable values in the vim config
command! -nargs=0 TurboDefault call g:turboterm#TurboToggle(eval('g:turboterm_default_dir'), eval('g:turboterm_default_winsize'))
command! -nargs=0 TurboVert call g:turboterm#TurboToggle(eval('g:turboterm_default_vert_dir'), eval('g:turboterm_default_winsize'))
command! -nargs=0 TurboHor call g:turboterm#TurboToggle(eval('g:turboterm_default_hor_dir'), eval('g:turboterm_default_winsize'))


" Toggle terminal on from insert mode (keymaps)
inoremap <C-\>  <Esc>:TurboDefault<CR>

" Terminal mapping for quickly going back to normal mode
tnoremap <C-n> <C-\><C-n>

