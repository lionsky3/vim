let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<CR>
"set cscopequickfix=s-,c-,d-,i-,t-,e-
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1
nnoremap <silent> <F12> :A<CR>
nnoremap <silent> <F3> :Grep<CR>
filetype plugin indent on
set completeopt=longest,menu
nnoremap <silent> <Tab> :n<CR>
nmap b :N<CR>
set t_Co=256
colorscheme calmar256-light
" colorscheme desert
filetype plugin on
set expandtab
set shiftwidth=2
set softtabstop=2
"set cscopetag 
"set cscopetagorder=1 

set nocompatible               " be iMproved
filetype off                   " required!
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Bundle 'Valloric/YouCompleteMe'

syntax on
command Jslint !jslint --white --eqeq %
nnoremap <leader>j :Jslint<CR>
command D !d8 %
command R !ruby %
set tags=./tags,tags;$HOME
set hls
au FileType gitcommit set tw=80
set clipboard=unnamed
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
set foldmethod=indent
set foldlevel=99
call vundle#end()            " required

" Enable folding with the spacebar
nnoremap <space> za
