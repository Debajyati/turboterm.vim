" Title: turboterm.vim
" Author: Debajyati Dey <https://github.com/Debajyati>
" Created: 25/08/2024
" License: GPL
" Description: Smart Terminal Integration for Vanilla Vim

if exists("g:loaded_turboterm") || !has("terminal")
  finish
endif
let g:loaded_turboterm = 1

" Command to access the TurboToggle function
command! -nargs=+ TurboToggle call g:turboterm#TurboToggle(<f-args>)

" Toggle terminal on/off from normal mode (keymaps)
" Horizontally
nnoremap <space>th  :TurboToggle 12<CR>
" Vertically
nnoremap <space>tv  :TurboToggle 90 right<CR>

" Toggle terminal on from insert mode (keymaps)
inoremap <C-\> <Esc> :TurboToggle 12<CR>

" Terminal go back to normal mode
tnoremap <C-n> <C-\><C-n>

