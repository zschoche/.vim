set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
filetype plugin indent on  

nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>a
nmap <D-s> :w<CR>
imap <D-s> <Esc>:w<CR>a

nmap <c-z> :undo<CR>
imap <c-z> <Esc>:undo<CR>
nmap <D-z> :undo<CR>
imap <D-z> <Esc>:undo<CR>

set incsearch
set ignorecase
set smartcase

map <C-A-Left> :wincmd h<CR>
map <C-A-Right> :wincmd l<CR>
map <C-A-Up> :wincmd k<CR>
map <C-A-Down> :wincmd j<CR>

nmap <silent> <F12> :CommandTBuffer<CR>
nmap <C-F12> :CommandT<CR>

imap <F12> <Esc>:CommandTBuffer<CR>
imap <C-F12> <Esc>:CommandT<CR>



ino <C-F11> <c-r>=TriggerSnippet()<cr>  
snor <C-F11> <esc>i<right><c-r>=TriggerSnippet()<cr>

let g:alternateSearchPath = 'sfr:../source,sfr:../src,sfr:../include,sfr:../inc,abs:/Developer/usr/clang-ide/lib/c++/v1,abs:/usr/local/include,abs:/usr/include/'

filetype plugin on
set autoindent
set number
colorscheme codeschool
command T CommandT
command MM wa | make
command MT wa | make | !./test
command LL wa | !pdflatex %

Bundle 'Valloric/YouCompleteMe'



