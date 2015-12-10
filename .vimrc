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

if (exists('+colorcolumn'))
    set colorcolumn=80
    highlight ColorColumn ctermbg=8
endif


" remappings
inoremap jk <ESC>

nnoremap <F3> :NumbersToggle<CR>
nnoremap <F4> :NumbersOnOff<CR>

" happy cat message
echo ">^.^<"

" display
set relativenumber
set nowrap

"abbreviations
iabbrev adn and
iabbrev waht what
iabbrev @@ morrison.Adam.S@gmail.com

"leader remap
let mapleader = " "
let maplocalleader = "\""

"navigation
nnoremap H 0
nnoremap L $

" SQL DB commands
nnoremap <leader>dp :DBPromptForBufferParameters<cr>1<cr>
nnoremap <leader>da Gvgg:DBExecRangeSQL<cr>

" vimrc editing
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

"line movement
nnoremap - ddp
nnoremap _ dd2kp

"surroundings
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
nnoremap <leader>( viw<esc>a(<esc>hbi)<esc>lel
nnoremap <leader>) viw<esc>a(<esc>hbi)<esc>lel

vnoremap <leader>" <esc>`<i"<esc>`>a"<esc>

"replace word in caps
inoremap <c-u> <esc>viwU

"unmappings
inoremap <esc> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap <up> <esc><nop>i
nnoremap <down> <esc><nop>i
nnoremap <left> <esc><nop>i
nnoremap <right> <esc><nop>i

" operator mappings
onoremap in( :<c-u>normal! f(vi(<cr>
onoremap il( :<c-u>normal! F)vi(<cr>
onoremap in{ :<c-u>normal! f{vi{<cr>
onoremap il{ :<c-u>normal! F}vi{<cr>
onoremap in[ :<c-u>normal! f[vi[<cr>
onoremap il[ :<c-u>normal! F]vi[<cr>
" comment autocmds
augroup comments
    autocmd!
    autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>
    autocmd FileType python nnoremap <buffer> <localleader>c I#<esc>
    autocmd FileType ruby nnoremap <buffer> <localleader>c I#<esc>
    autocmd FileType sql nnoremap <buffer> <localleader>c I--<esc>
augroup END

" snippets
augroup sql_abbreves
    autocmd!
    autocmd FileType sql :iabbrev <buffer> vc VARCHAR(255)
    autocmd FileType sql :iabbrev <buffer> select SELECT
    autocmd FileType sql :iabbrev <buffer> from FROM
    autocmd FileType sql :iabbrev <buffer> where WHERE
    autocmd FileType sql :iabbrev <buffer> is IS
    autocmd FileType sql :iabbrev <buffer> not NOT
    autocmd FileType sql :iabbrev <buffer> null NULL
augroup END
"large sql snippets


