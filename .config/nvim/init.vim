" line numbers
set nu

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

" Typos ;-)
cmap WQ wq
cmap Wq wq
cmap W w
cmap Q q

" Allow saving of files as sudo when I forgot to start vim using sudo
cmap w!! w !sudo tee > /dev/null %

" X11 clipboard
set clipboard=unnamedplus

" mouse input
set mouse=a

" jump to the last position when reopening a file
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" vim-plug

call plug#begin('~/.local/share/nvim/plugged')

" Make sure you use single quotes
"Plug 'vim-airline/vim-airline'
"Plug 'scrooloose/nerdtree'
Plug 'tomasiser/vim-code-dark'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'jreybert/vimagit'

" Initialize plugin system
call plug#end()

colorscheme codedark

let g:airline_theme = "codedark"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

let NERDTreeShowHidden = 1
