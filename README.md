# TurboTerm.vim
A vim plugin for adding smart/easy terminal integration in Vanilla Vim (*in vimscript*)
> It won't work in Neovim - ;(

But it works like a charm in vim :)
I mean, it should!

## Installation Instruction
- Install vim plug or your preferred plugin manager to install the plugin.
If using vim-plug
```vim
call plug#begin('~/.vim/plugged')
... (your other plugins)
Plug 'Debajyati/turboterm.vim'
call plug#end()
```
Save the .vimrc file. Restart Vim.

Then run -
`:PlugInstall` to install it.

## Using the plugin
Using the command - `:TurboToggle`:
- It takes two arguments - arg1:direction ( up | down | right | left ), arg2:height/width ( integer like 12,80,etc. | "NO_RESIZE" )
- Both arguments are neccessary. In case of second argument, NO_RESIZE must be used if want the terminal size to get half of the total window height/width.
For example - `:TurboToggle right 80` will open/toggle the terminal window with 80 width of size in the right side of a vertical split.
`:TurboToggle up NO_RESIZE` will open/toggle the terminal window with half of the full screen width in the top of the vertical split.

Set some keymaps:-
```vim
" Toggle terminal on/off from normal mode (keymaps)
" Horizontally (based on a default width)
nnoremap <space>th  :TurboHor<CR> " Opens the terminal window in the bottom split by default
" Vertically (based on a default height)
nnoremap <space>tv  :TurboVert<CR> " Opens the terminal window in the right split by default
```

You can override the default behavior of these commands - TurboDefault, TurboHor, TurboVert by just changing the global variables before them.
For Example -
```vim
let g:turboterm_default_vert_dir = "left" " This will make the TurboVert command always toggle the terminal in the left split.
let g:turboterm_default_hor_dir = "up" " This will make the TurboHor command always toggle the terminal in the top split.
```

Using the default keymaps -

- `<C-\>` toggles terminal based on the same default height in horizontal direction.(in insert mode)
- `<C-n>` will directly change the window from terminal mode to normal mode.

If you dont kill the terminal and want to toggle it from terminal mode, you can't. You need to toggle it from normal mode.
First switch the terminal into normal mode using `<C-n>` and toggle using `<space>tv` or `<space>th` or whatever keymap you've set.


## Reporting Bugs
In case of any bugs or issues report it in the GitHub (by opening an issue).

## Star 🌟 this repo
Star ✨ this project to show some 💚 and make it more accessible!

