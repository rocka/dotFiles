" line numbers
set nu!

" syntax highlight
syntax on

" file type detect
filetype on

" indent
set autoindent
set cindent
set smartindent

" 4 spaces for tab
set shiftwidth=4
set tabstop=4
set expandtab

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

