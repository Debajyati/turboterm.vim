# TurboTerm.vim
A vim plugin for adding smart/easy terminal integration in Vanilla Vim (*in vimscript*)
> It won't work in Neovim - ;(

But it works like a charm in vim :)

## Installation Instruction
- Install vim plug or your preferred plugin manager to install the plugin.
If using vim-plug
```vimL
call plug#begin('~/.vim/plugged')
... (your other plugins)
Plug 'Debajyati/turboterm.vim', { 'tag': 'v0.1.0'}
call plug#end()
```
Save the .vimrc file. Restart Vim.

Then run -
`:PlugInstall` to install it.

## Using the plugin
Using the command - `:TurboToggle`:
- It takes two arguments - arg1:height/width, arg2:direction ( up | down | right | left )
- First argument is neccessary. In case of second argument, default value down is used.
For example - `:TurboToggle 80 right` will open/toggle the terminal with 80 width of size in the right side of a vertical split.

Using the keymaps -
- `<space>tv` toggles terminal based on a default width in vertical direction. (in normal mode)
- `<space>th` toggles terminal based on a default height in horizontal direction.(in normal mode)

- `<C-\>` toggles terminal based on the same default height in horizontal direction.(in insert mode)
- `<C-n>` will directly change the terminal mode to normal mode.

If you dont kill the terminal and want to toggle it from terminal mode, you can't. You need to toggle it from normal mode.
First switch the terminal into normal mode using `<C-n>` and toggle using `<space>tv` or `<space>th`.
 

## Reporting Bugs
In case of any bugs or issues report it in the GitHub (by opening an issue).

## Star 🌟 this repo
Star ✨ this project to show some 💚 and make it more accessible!
