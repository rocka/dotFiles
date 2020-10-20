" system default
unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim

" line numbers
set nu
highlight LineNr ctermfg=lightgrey

" indent
set autoindent
set smartindent

" 4 spaces for tab
set expandtab
set shiftwidth=4
set tabstop=4

" X11 clipboard
if has('clipboard')
  set clipboard=unnamedplus
endif

" always show statusline and tabline
set laststatus=2
set showtabline=2

" skip airline loading
let g:loaded_airline = 1
