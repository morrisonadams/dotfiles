syntax on
set t_Co=256

colorscheme mustang
set ts=4 sw=4 et
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1


set nocompatible              " be iMproved, required
filetype off                  " required




let g:dbext_default_profile_mysql_local = 'type=MYSQL:user=root:passwd=Kgpawh91:dbname=decmembershiplist:host=127.0.0.1:port=3306'

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

Plugin 'scrooloose/syntastic'

Plugin 'SQLComplete.vim'

Plugin 'myusuf3/numbers.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'bling/vim-airline'

Plugin 'nathanaelkane/vim-indent-guides'

Plugin 'dbext.vim'

Plugin 'bronson/vim-trailing-whitespace'

Plugin 'kien/rainbow_parentheses.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
set number
set hidden
set ruler
set cursorline
set title
set smartcase
set laststatus=2

let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"


" remappings
inoremap jk <ESC>

nnoremap <F3> :NumbersToggle<CR>
nnoremap <F4> :NumbersOnOff<CR>

if (exists('+colorcolumn'))
    set colorcolumn=80
    highlight ColorColumn ctermbg=8
endif

