let s:save_cpo = &cpo
set cpo&vim

let g:term_buf = 0
let g:term_win = 0
" Function for the terminal toggle
function! g:turboterm#TurboToggle(direction, height)
  if win_gotoid(g:term_win)
    hide
  else
    if a:direction == "right"
      vertical botright new
    elseif a:direction == "left"
      vertical topleft new
    elseif a:direction == "up"
      topleft new
    elseif a:direction == "down"
      botright new
    else
      echoerr "incorrect direction value!"
      echoerr "switching to defaults..."
      botright new
    endif
    try
      exec "buffer " . g:term_buf
    catch
      call term_start([$SHELL], {'curwin': 1, 'term_finish': 'close'})
      let g:term_buf = bufnr("")
      set nonumber
      set norelativenumber
      set signcolumn=no
    finally
      if a:height == "NO_RESIZE"
        exec "wincmd ="
      else
        if a:direction == "up" || a:direction == "down"
          exec "resize " . a:height
        elseif a:direction == "left" || a:direction == "right"
          exec "vert resize " . a:height
        endif
      endif
      startinsert!
    endtry
    let g:term_win = win_getid()
  endif
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
