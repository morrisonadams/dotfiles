" General settings
syntax on
set t_Co=256
set relativenumber
set nowrap
set nocompatible
set backspace=2
set backup
set hidden
set title
set smartcase
set laststatus=2
set ts=4 sw=4 et
set noswapfile

" Performance optimizations
set re=1
set lazyredraw

" Vundle configuration
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'myusuf3/numbers.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'vimwiki/vimwiki'
Plugin 'easymotion/vim-easymotion'
Plugin 'itchyny/lightline.vim'
Plugin 'junegunn/vim-easy-align'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'morhetz/gruvbox'
Plugin 'shinchu/lightline-gruvbox.vim'
Plugin 'mhinz/vim-startify'
Plugin 'terryma/vim-expand-region'

call vundle#end()
filetype plugin indent on

" Color scheme
autocmd vimenter * ++nested colorscheme gruvbox
set background=dark   " Setting light mode
let g:lightline = {}
let g:lightline.colorscheme = 'gruvbox'

" Mappings
" General
map <C-J> 5jz.
map <C-K> 5kz.
map <C-n> :NERDTreeToggle<CR>
let mapleader = " "
let maplocalleader = "\""

" EasyMotion
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

" Cursor shape in different modes
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

" Expand/shrink region
map K <Plug>(expand_region_expand)
map J <Plug>(expand_region_shrink)

" Remappings
inoremap jk <ESC>
nnoremap <F3> :NumbersToggle<CR>
nnoremap <F4> :NumbersOnOff<CR>
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" Happy cat message
echo ">^.^<"

" Abbreviations
iabbrev adn and
iabbrev waht what
iabbrev @@ morrison.Adam.S@gmail.com

" Navigation
nnoremap H 0
nnoremap L $

" Indent guides
let g:indent_guides_enable_on_vim_startup = 1

" Vimrc editing
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>es :vnew<cr>

" Quality of life improvements
nnoremap <leader>wf :%y+ <cr>
nnoremap <leader>cl 0v$y

" Save and quit
nnoremap <leader>qq :wq <cr>

" Git commands
nnoremap <leader>gs :Gstatus <cr>
nnoremap <leader>go :Gcommit <cr>
nnoremap <leader>gf jjjwwwwv$hy<esc>ggpA:

" Document controls
nnoremap <leader>wqq :wq <cr>
nnoremap <leader>qq :q <cr> 

" Line movement
nnoremap - ddp
nnoremap _ dd2kp

" Surroundings
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
nnoremap <leader>( viw<esc>a(<esc>hbi)<esc>lel
nnoremap <leader>) viw<esc>a(<esc>hbi)<esc>lel
vnoremap <leader>" <esc>`<i"<esc>`>a"<esc>

" Replace word in caps
nnoremap <c-b> <esc>viwU

" Operator mappings
onoremap in( :<c-u>normal! f(vi(<cr>
onoremap il( :<c-u>normal! F)vi(<cr>
onoremap in{ :<c-u>normal! f{vi{<cr>
onoremap il{ :<c-u>normal! F}vi{<cr>
onoremap in[ :<c-u>normal! f[vi[<cr>
onoremap il[ :<c-u>normal! F]vi[<cr>

" Comment autocmds
augroup comments
    autocmd!
    autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>
    autocmd FileType python nnoremap <buffer> <localleader>c I#<esc>
    autocmd FileType ruby nnoremap <buffer> <localleader>c I#<esc>
    autocmd FileType sql nnoremap <buffer> <localleader>c I--<esc>
augroup END

" Snippets

" Autocomplete
autocmd Filetype sql :nmap <leader>m yiwA AS <esc>pa,<esc>o
autocmd Filetype sql :nmap <leader>aa gaip*<c-x> AS<cr>  
autocmd Filetype sql :nmap <leader>== gaip=<cr>  
autocmd Filetype sql :nmap <leader>tt gaip*<c-x>\s[a-z_]*\.[a-z_]* <cr>gaip=<cr>

" Field selection
:imap ;; <C-O>/%%%<CR><C-O>c3l
:nmap ;; /%%%<CR>c3l
