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

" Command to access the TurboToggle function.
" (both agruments are strictly required)
command! -nargs=+ TurboToggle call g:turboterm#TurboToggle(<f-args>)
command! -nargs=0 TurboDefault call g:turboterm#TurboToggle(eval('g:turboterm_default_hor_dir'), eval('g:turboterm_default_winsize'))<CR>

" Toggle terminal on from insert mode (keymaps)
inoremap <C-\> <Esc> :TurboToggle g:turboterm_default_dir g:turboterm_default_height<CR>

" Terminal mapping for quickly going back to normal mode
tnoremap <C-n> <C-\><C-n>

