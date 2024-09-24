# TurboTerm.vim
![vim-badge-static](https://staging.shields.io/badge/VIM-9?style=for-the-badge&logo=vim&link=https%3A%2F%2Fwww.vim.org%2F)
![GPL_v3-LICENSE-badge-static](https://staging.shields.io/badge/GPL_v3-LICENSE-0a0a0a?style=for-the-badge&logo=gnu&logoColor=yellow&logoSize=auto)

***Requires vim 8.0 or higher***

A vim plugin for adding smart/easy terminal integration in Vanilla Vim (*in vimscript*)
> It won't work in Neovim - ;(

> Although I plan to extend this project to be compatible with both Vim & Neovim. : )

But it works like a charm in vim :)

## Installation Instruction
Install vim plug or your preferred plugin manager to install the plugin.
If using vim-plug
```vim
Plug 'Debajyati/turboterm.vim', { 'tag': '*' }
```
Save the .vimrc file. Restart Vim.

Then run -
`:PlugInstall` to install it.

## Using the plugin
Using the command - `:TurboToggle`:
- It takes two arguments - arg1:direction ( up | down | right | left ), arg2:height/width ( integer like 12,80,etc. | "NO_RESIZE" )
- Both arguments are neccessary. In case of second argument, NO_RESIZE must be used if want the terminal to get size of half of the total window height/width.
For example - `:TurboToggle right 80` will open/toggle the terminal window with 80 width of size in the right side of a vertical split.
`:TurboToggle up NO_RESIZE` will open/toggle the terminal window with half of the full screen width in the top of the horizontal split.

Additionally,
you can set some custom commands to get some default behavior/functionality. Look below to see what I want to mean -

Paste the following code below in your .vimrc -
```vim
let g:turboterm_default_dir = "down"
let g:turboterm_default_winsize = "NO_RESIZE"

let g:turboterm_default_vert_dir = "right" " This will make the TurboVert command always toggle the terminal in the right split.
let g:turboterm_default_hor_dir = "down" " This will make the TurboHor command always toggle the terminal in the bottom split.

" Following commands take no arguments (utililizing global variables)
" Default functionality can be overridden by just changing the variable values in the vim config
command! -nargs=0 TurboDefault execute "TurboToggle " . g:turboterm_default_dir . " " . g:turboterm_default_winsize
command! -nargs=0 TurboVert execute "TurboToggle " . g:turboterm_default_vert_dir . " " . g:turboterm_default_winsize
command! -nargs=0 TurboHor execute "TurboToggle " . g:turboterm_default_hor_dir . " " . g:turboterm_default_winsize
```

You can override the default behavior of these commands - TurboDefault, TurboHor, TurboVert by just changing the global variables before the cmd definitions or in the cmdline.
For Example -
```vim
let g:turboterm_default_vert_dir = "left" " This will make the TurboVert command always toggle the terminal in the left split.
let g:turboterm_default_hor_dir = "up" " This will make the TurboHor command always toggle the terminal in the top split.
```

Set some keymaps:-
```vim
" Toggle terminal on/off from normal mode (keymaps)
" Horizontally (based on a default width)
nnoremap <space>th  :TurboHor<CR>
" Vertically (based on a default height)
nnoremap <space>tv  :TurboVert<CR>

" Toggle terminal on from insert mode
inoremap <C-\>  <Esc>:TurboHor<CR>
```

TurboTerm has a built-in keymap -

- `<C-n>` will directly change the window from terminal mode to normal mode.

If you dont kill the terminal and want to toggle it from terminal mode, you can't. You need to toggle it from normal mode.
First switch the terminal into normal mode using `<C-n>` and toggle using `<space>tv` or `<space>th` or whatever keymap you've set.


## Reporting Bugs
In case of any bugs or issues report it in the GitHub (by opening an issue).

## Star 🌟 this repo
Star ✨ this project to show some 💚 and make it more accessible!

