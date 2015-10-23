
set nocompatible              " be iMproved, required
filetype off                  " required


set t_Co=256


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'bling/vim-airline'

Plugin 'scrooloose/nerdtree'

Plugin 'scrooloose/syntastic'

Plugin 'nathanaelkane/vim-indent-guides'

Plugin 'dbext.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" see :h vundle for more details or wiki for FAQ
set laststatus=2
set hidden
colorscheme mustang
set ruler
set number
set cursorline
set laststatus=2 " Always show status bar
set nowrap
set term=screen-256color

" change cursor type
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

" key remappings
inoremap jk <ESC>

syntax on
set encoding=utf-8

