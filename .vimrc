" line numbers
set nu!

" syntax highlight
syntax on

" file type detect
filetype on

set autoindent
set cindent
set shiftwidth=4
set tabstop=4

" auto indent
set ai!

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %
