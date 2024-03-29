" -- Vim-Plug Setup

call plug#begin('~/.local/share/nvim/plugged')
"Plug 'drmingdrmer/vim-syntax-markdown'
Plug 'scrooloose/nerdcommenter'
"Plug 'scrooloose/syntastic'
Plug 'w0rp/ale'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'airblade/vim-rooter'
Plug 'vim-airline/vim-airline'
"Plug 'itchyny/lightline.vim'
"Plug 'ludovicchabant/vim-gutentags'
Plug 'junegunn/goyo.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
"Plug 'neovimhaskell/haskell-vim'
"Plug 'leafgarland/typescript-vim'
"Plug 'quramy/tsuquyomi'
"Plug 'takac/vim-hardtime'
Plug 'junegunn/fzf.vim'
"Plug 'ThePrimeagen/vim-be-good', {'do': './install.sh'}
"Plug 'fatih/vim-go'
Plug 'raimondi/delimitMate'
"Plug 'sirver/ultisnips' | Plug 'honza/vim-snippets'
Plug 'sheerun/vim-polyglot'
Plug 'rust-lang/rust.vim'
Plug 'vimwiki/vimwiki'
Plug 'vale1410/vim-minizinc'
Plug 'christoomey/vim-tmux-navigator'
Plug 'voldikss/vim-floaterm'
call plug#end()

" -- My Setup --

colorscheme molokai
"colorscheme Benokai
"colorscheme summerfruits256

" inoremap <Space><Tab> <Esc>/<++><Enter>:noh<Enter>"_c4l
" map <Space><Tab> <Esc>/<++><Enter>:noh<Enter>"_c4l


set tabstop=2
set shiftwidth=2
set expandtab
set relativenumber
set number
set wrap
set linebreak
set nolist
set spell
set mouse=a
set nohlsearch
set ignorecase
set smartcase
set termguicolors
set nocompatible
set exrc
set secure
set encoding=utf-8
filetype plugin on
syntax on

let g:python3_host_prog = '/home/kelvin/anaconda3/bin/python3'

source $HOME/.config/nvim/plugin-config/coc.vim
source $HOME/.config/nvim/plugin-config/coc-snippets.vim
let g:ale_disable_lsp = 1
let g:ale_linters = {'haskell': ['cabal_ghc', 'ghc-mod', 'hdevtools', 'hie', 'hlint', 'stack_build', 'stack_ghc']}


map <C-H> <C-W>h
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-L> <C-W>l
noremap Y y$
let delimitMate_expand_space = 1
let delimitMate_expand_inside_quotes = 1
let delimitMate_expand_cr = 2
let delimitMate_jump_expansion = 1
noremap <silent> <C-p> :FZF<CR>
noremap <silent> <C-g> :GFiles<CR>
noremap <silent> <C-t> :Tags<CR>
noremap <silent> <C-c> :Colors<CR>
"noremap <silent> <C-o> :Buffers<CR>
noremap <C-f> :Rg!
""inoremap <expr> <C-x><C-l> fzf#vim#complete#line()
imap <c-x><c-l> <plug>(fzf-complete-line)
""imap <c-x><c-l> <plug>(fzf-complete-buffer-line)
""nmap <Leader>gd :YcmCompleter GoTo<CR>
nmap <silent> <Leader>wd :VimwikiMakeDiaryNote<CR>
nmap <silent> <Leader>g :Git<CR>
nmap <silent> <Leader>f :FloatermNew ranger<CR>

"let g:lightline = {
      "\ 'component': {
      "\   'filename': '%f',
      "\ }
      "\ }

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit',
  \ 'ctrl-o': ':r !echo'}

" TMUX
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
" Disable tmux navigator when zooming the Vim pane
let g:tmux_navigator_disable_when_zoomed = 1

function! MakeTransparent()
  " Activate Transparency
  " do it with lighter textual colourscheme, like vibranink
  colorscheme vibrantink
  syntax on
  highlight Normal ctermbg=none
  highlight NonText ctermbg=none
endfunction

function! AddMake()
  autocmd BufWritePost <buffer> !make
endfunction

function! Comment()
  %s/<--/<!--/g
endfunction

function! UnComment()
  %s/<!--/<--/g
endfunction

command! RC tabedit ~/.config/nvim/init.vim

" -- Markdown setup --
" comments
autocmd FileType markdown inoremap \todo <!--TODO: --><Left><Left><Left>
autocmd FileType markdown inoremap \cc <!----><Left><Left><Left>
autocmd FileType markdown inoremap \cb <!----><Left><Left><Left><Up>
autocmd FileType markdown inoremap \cs <----><Left><Left><Left>
autocmd FileType markdown inoremap \c\ <Right><Right><Right>
" movement
autocmd FileType markdown noremap j gj
autocmd FileType markdown noremap k gk
" latex
"autocmd FileType markdown inoremap \tb \pmb{}<Left>
autocmd FileType markdown inoremap \tb \textb{}<Left>
autocmd FileType markdown inoremap \mbb \mathbb{}<Left>
autocmd FileType markdown inoremap \mc \mathcal{}<Left>
autocmd FileType markdown inoremap \l( \left(  \right)<Left><Left><Left><Left><Left><Left><Left><Left>
autocmd FileType markdown inoremap \l[ \left[  \right]<Left><Left><Left><Left><Left><Left><Left><Left>
autocmd FileType markdown inoremap \al \begin{align}\end{align}<Up>
autocmd FileType markdown inoremap \*al \begin{align*}\end{align*}<Up>
autocmd FileType markdown inoremap <- \leftarrow
autocmd FileType markdown inoremap <= \Leftarrow
autocmd FileType markdown inoremap -> \rightarrow
autocmd FileType markdown inoremap => \Rightarrow
autocmd FileType markdown inoremap \sumk \sum_{k=1}^{K}
autocmd FileType markdown inoremap \sumn \sum_{n=1}^{N}
autocmd FileType markdown inoremap \sumw \sum_{w \in \mathcal{A}}
autocmd FileType markdown inoremap \prodk \prod_{k=1}^{K}
autocmd FileType markdown inoremap \prodn \prod_{n=1}^{N}
autocmd FileType markdown inoremap \prodw \prod_{w \in \mathcal{A}}
autocmd FileType markdown inoremap \del \frac{\partial \mathcal{L}}{\partial }<Left>
autocmd FileType markdown inoremap \ml Machine Learning
autocmd FileType markdown inoremap \dt Decision Tree
autocmd FileType markdown inoremap \bb Branch and Bound
autocmd FileType markdown inoremap \ig Information Gain
autocmd FileType markdown inoremap \mip Mixed-Integer Program
autocmd FileType text inoremap \lpp longest proper prefix that matches the suffix of pattern where the character that gets moved to the mismatched position is the mismatched character.
autocmd FileType text noremap "" "+yip

function MarkdownLevel()
  let h = matchstr(getline(v:lnum), '^#\+')
  if empty(h)
    return "="
  else
    return ">" . len(h)
  endif
endfunction
autocmd FileType markdown setlocal foldexpr=MarkdownLevel()
autocmd FileType markdown setlocal foldmethod=expr

" -- Haskell setup --
autocmd FileType haskell set nospell
autocmd FileType haskell inoremap \todo -- TODO: 
let g:haskell_classic_highlighting = 1
let g:haskell_indent_if = 3
let g:haskell_indent_case = 2
let g:haskell_indent_let = 4
let g:haskell_indent_where = 6
let g:haskell_indent_before_where = 2
let g:haskell_indent_after_bare_where = 2
let g:haskell_indent_do = 3
let g:haskell_indent_in = 1
let g:haskell_indent_guard = 2
let g:haskell_indent_case_alternative = 1
let g:cabal_indent_section = 2

" -- Python setup --
autocmd FileType python set foldmethod=indent
autocmd FileType python set tabstop=4
autocmd FileType python inoremap \todo # TODO: 
autocmd FileType python inoremap \c\ <Right><Right><Right>
autocmd FileType python inoremap \cb """"""<Left><Left><Left><Up>
autocmd FileType python inoremap \cc """"""<Left><Left><Left>

" -- C & C++ setup --
autocmd FileType c set foldmethod=syntax
autocmd FileType cpp set foldmethod=syntax
autocmd FileType c set tabstop=4
autocmd FileType cpp set tabstop=4

" -- Typescript --
autocmd FileType typescript set foldmethod=indent

" -- Go --
let g:go_def_mapping_enabled = 0

" -- Rust --
autocmd FileType rust set foldmethod=syntax

" -- The Heist --
autocmd BufReadPre,FileReadPre  *.pi  set syntax=python
autocmd BufReadPre,FileReadPre  *.pi  set ft=pithon

" -- VimWiki --

