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

function! MakeTransparent()
  " Activate Transparency
  " do it with lighter textual colourscheme, like vibranink
  colorscheme vibrantink
  syntax on
  highlight Normal ctermbg=none
  highlight NonText ctermbg=none
endfunction

" -- Markdown setup --
autocmd FileType markdown inoremap $ $$<Left>
autocmd FileType markdown inoremap \todo <!--TODO: --><Left><Left><Left>
autocmd FileType markdown inoremap \cc <!----><Left><Left><Left>
autocmd FileType markdown inoremap \cb <!----><Left><Left><Left><Up>
autocmd FileType markdown inoremap \cs <----><Left><Left><Left>
autocmd FileType markdown inoremap \c\ <Right><Right><Right>
autocmd FileType markdown noremap j gj
autocmd FileType markdown noremap k gk

" -- Haskell setup --
autocmd FileType haskell set nospell
