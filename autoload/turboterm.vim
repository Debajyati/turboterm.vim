let s:save_cpo = &cpo
set cpo&vim

let g:term_buf = 0
let g:term_win = 0
" Function for the terminal toggle
function! g:turboterm#TurboToggle(height, direction="down")
  if win_gotoid(g:term_win)
    hide
  else
    if a:direction == "right"
      vertical botright new
      exec "vert resize " . a:height
    elseif a:direction == "left"
      vertical topleft new
      exec "vert resize " . a:height
    elseif a:direction == "up"
      topleft new
      exec "resize " . a:height
    elseif a:direction == "down"
      botright new
      exec "resize " . a:height
    endif
    try
      exec "buffer " . g:term_buf
    catch
      call term_start([$SHELL], {'curwin': 1, 'term_finish': 'close'})
      let g:term_buf = bufnr("")
      set nonumber
      set norelativenumber
      set signcolumn=no
    endtry
    startinsert!
    let g:term_win = win_getid()
  endif
endfunction

