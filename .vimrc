" system default
unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim

" line numbers
set nu
highlight LineNr ctermfg=lightgrey

" syntax highlight
syntax on

" file type detect
filetype on

" indent
set autoindent
set smartindent

" 4 spaces for tab
set expandtab
set shiftwidth=4
set tabstop=4

" show invisible char
"set listchars=eol:␊,tab:␉·,trail:␠
"set list

" Typos ;-)
cmap WQ wq
cmap Wq wq
cmap W w
cmap Q q

" Allow saving of files as sudo when I forgot to start vim using sudo
cmap w!! w !sudo tee > /dev/null %

" X11 clipboard
if has('clipboard')
  set clipboard=unnamedplus
endif

" mouse input
set mouse=a

" Powerline
"set laststatus=2
"python3 from powerline.vim import setup as powerline_setup
"python3 powerline_setup()
"python3 del powerline_setup

" Airline
let g:airline_theme = "powerlineish"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

