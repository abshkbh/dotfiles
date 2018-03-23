" Welcome to Vim (http://go/vim).

" be iMproved, required
set nocompatible
" required
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" YouCompleteMe plugin
Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
"call vundle#end()            " required

" Enable per-project local vimrc files
set exrc
set secure

" All of your plugins must be added before the following line.

" Enable file type based indent configuration and syntax highlighting.
filetype plugin indent on
syntax on

" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

" use indentation of previous line
set autoindent

" use intelligent indentation for C
set smartindent

" configure tabwidth and insert spaces instead of tabs
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
set expandtab        " expand tabs to spaces

" wrap lines at 80 chars.
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

" Used to prevent using arrow keys for navigation
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

" Open ctags result in a new tab
nnoremap <Leader><C-]> <C-w><C-]><C-w>T

" TODO: Fix hard coded paths below here
"
" Used for formatting Chromium / CrOs / Android C++ and Java sources according
" to their style guide
map <C-I> :pyf /usr/local/google/home/abhishekbh/scripts/clang-format.py<cr>
imap <C-I> <c-o> :pyf /usr/local/google/home/abhishekbh/scripts/clang-format.py<cr>
nnoremap <Leader>cf :%pyf /usr/local/google/home/abhishekbh/scripts/clang-format.py<cr><c-o>

" Set path to selectively enable linux kernel coding style 
let g:linuxsty_patterns = [ "/usr/local/google/home/abhishekbh/chromiumos/src/third_party/" ]
" Set shortcut to on demand apply linux coding style
nnoremap <Leader>ca :LinuxCodingStyle<cr>

" Custom settings for some projects. For some reason symlinked paths don't work
" here
autocmd BufRead,BufNewFile /usr/local/google/home/abhishekbh/personal/eudyptula/* setlocal noexpandtab tabstop=8 shiftwidth=8
autocmd BufRead,BufNewFile /usr/local/google/home/abhishekbh/chromiumos/src/third_party/* setlocal noexpandtab tabstop=8 shiftwidth=8
autocmd BufRead,BufNewFile /usr/local/google/ssd2/projects/nyc-mr1-arc/* let g:clang_format_path = "/usr/local/google/ssd2/projects/nyc-mr1-arc/prebuilts/clang/host/linux-x86/clang-3217047/bin/clang-format"
