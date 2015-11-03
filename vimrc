set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'ervandew/supertab'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'rdnetto/YCM-Generator'
Plugin 'tpope/vim-fugitive'
Plugin 'easymotion/vim-easymotion'
Plugin 'scrooloose/nerdtree.git'
Plugin 'tpope/vim-surround'
Plugin 'honza/vim-snippets'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'jdonaldson/vaxe'
Plugin 'rust-lang/rust.vim'
Plugin 'tpope/vim-sensible'
Plugin 'bling/vim-airline'
Plugin 'tikhomirov/vim-glsl'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"execute pathogen#infect()

" make YCM compatible with UltiSnips (using supertab)
"let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
"let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<c-j>"
"let g:UltiSnipsJumpForwardTrigger = "<tab>"
"let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

au BufRead,BufNewFile *.jack setfiletype java
let g:airline#extensions#whitespace#enabled = 0
let g:vaxe_lime_target = "linux neko"
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_confirm_extra_conf = 0
set completeopt-=preview
let g:ycm_autoclose_preciew_window_after_completion = 1
let g:ycm_autoclose_preciew_window_after_insertion = 1
set shiftwidth=4
set softtabstop=4
set tabstop=4
set autochdir
set autoindent
set expandtab
set number
set autowrite
set confirm
set guifont=Ubuntu\ Mono\ 11
set guioptions-=r
set mouse=a
inoremap jk <ESC>
colorscheme molokai

if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif
