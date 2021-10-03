" Welcome to Vim (http://go/vim).
"
" If you see this file, your homedir was just created on this workstation.
" That means either you are new to Google (in that case, welcome!) or you
" got yourself a faster machine.
" Either way, the main goal of this configuration is to help you be more
" productive; if you have ideas, praise or complaints, direct them to
" vi-users@google.com (http://g/vi-users). We'd especially like to hear from you
" if you can think of ways to make this configuration better for the next
" Noogler.
" If you want to learn more about Vim at Google, see http://go/vimintro.

" Enable pathogen for extension handling
execute pathogen#infect()

" Enable per-project local vimrc files
set exrc
set secure

set nocompatible              " be iMproved, required

" All of your plugins must be added before the following line.

" Enable file type based indent configuration and syntax highlighting.
filetype plugin indent on
syntax on

" Custom non-google default stuff picked from the internet

" add ~/.vim/plugin path to the vim runtime path to be searchable for plugins
" set runtimepath+=$HOME/.vim/plugin

" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
" disable vi compatibility (emulation of old bugs)
set nocompatible
" use indentation of previous line
set autoindent
" use intelligent indentation for C
set smartindent
" configure tabwidth and insert spaces instead of tabs
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
set noexpandtab        " expand tabs to spaces
" wrap lines at 120 chars. 80 is somewhat antiquated with nowadays displays.
set textwidth=80
" turn syntax highlighting on
set t_Co=256
syntax on
" this is what decides the background and text color. stored in ~/.vim/colors
colorscheme wombat256
" turn line numbers on
set number
" highlight matching braces
set showmatch
" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */

" ignorecase while searching
set ignorecase

function! ClangFormat()
  let l:formatdiff = 1
  py3f $HOME/shared-resources/clang-format.py
endfunction

" Press Ctrl+I to clang format file
nnoremap <C-I> :call ClangFormat()<CR>

" For Rust call \"RustFmt\" instead on Ctrl+I
autocmd filetype rust nnoremap <C-I> :RustFmt<CR>

" For Golang call \"GoFmt\" instead on Ctrl+I
let g:gofmt_on_save = 0
autocmd filetype go nnoremap <C-I> :Gofmt<CR>

" Used to prevent using arrow keys for navigation
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
