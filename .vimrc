" line numbers
set nu!

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
set listchars=eol:⏎,tab:␉·,trail:␠,nbsp:⎵
set list

" Typos ;-)
cmap WQ wq
cmap Wq wq
cmap W w
cmap Q q

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %
