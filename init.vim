colorscheme molokai

function! MakeTransparent()
  " Activate Transparency
  " do it with lighter textual colourscheme, like vibranink
  colorscheme vibrantink
  syntax on
  highlight Normal ctermbg=none
  highlight NonText ctermbg=none
endfunction

set tabstop=2
set shiftwidth=2
set expandtab
set number
set wrap
set linebreak
set nolist
