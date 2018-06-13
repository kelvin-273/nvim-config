" " -- Vundle Setup --
"
" set nocompatible              " be iMproved, required
" filetype off                  " required
"
" " set the runtime path to include Vundle and initialize
" set rtp+=~/.config/nvim/bundle/Vundle.vim
" call vundle#begin()
"
" " let Vundle manage Vundle, required
" Plugin 'VundleVim/Vundle.vim'
"
" Plugin 'drmingdrmer/vim-syntax-markdown'
" Plugin 'scrooloose/nerdcommenter'
" "Plugin 'scrooloose/syntastic'
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'vim-airline/vim-airline'
"
" " All of your Plugins must be added before the following line
" call vundle#end()
" filetype plugin indent on

" -- Vim-Plug Setup

call plug#begin('~/.local/share/nvim/plugged')
Plug 'drmingdrmer/vim-syntax-markdown'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/syntastic'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer' }
Plug 'vim-airline/vim-airline'
Plug 'junegunn/goyo.vim'
call plug#end()

" -- My Setup --

colorscheme molokai

function! MakeTransparent()
  " Activate Transparency
  " do it with lighter textual colourscheme, like vibranink
  colorscheme vibrantink
  syntax on
  highlight Normal ctermbg=none
  highlight NonText ctermbg=none
endfunction

function! Markdown()
  inoremap $ $$<Left>
  inoremap \todo <!--TODO: --><Left><Left><Left>
  inoremap \cc <!----><Left><Left><Left>
  inoremap \cb <!----><Left><Left><Left><Up>
  inoremap \cs <----><Left><Left><Left>
  noremap j gj
  noremap k gk
endfunction

function! Haskell()
  set nospell
endfunction

inoremap jj <Esc>
set tabstop=2
set shiftwidth=2
set expandtab
set number
set wrap
set linebreak
set nolist
set spell
"set cursorline
