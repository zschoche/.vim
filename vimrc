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

"F12
nmap <silent> <F12> :CommandTBuffer<CR>
imap <F12> <Esc>:CommandTBuffer<CR>
nmap <C-F12> :CommandT<CR>
imap <C-F12> <Esc>:CommandT<CR>
"F11
ino <F11> <c-r>=TriggerSnippet()<cr>  
snor <F11> <esc>i<right><c-r>=TriggerSnippet()<cr>
"F10
map <F10> :pyf $HOME/.vim/bin/clang-format.py<CR>
imap <F10> <ESC>:pyf $HOME/.vim/bin/clang-format.py<CR>i
"F9
"F8
"F7
"F6
"F5
"F4
nmap <F4> :Cunmapkeys<CR>
imap <F4> <Esc>:Cunmapkeys<CR>
"F3
nmap <F3> :Cmapkeys<CR>
imap <F3> <Esc>:Cmapkeys<CR>
"F2
nmap <F2> :nbclose<CR>
imap <F2> <Esc>:nbclose<CR>
"F1
nmap <F1> :Pyclewn<CR>
imap <F1> <Esc>:Pyclewn<CR>

let g:alternateSearchPath = 'sfr:../source,sfr:../src,sfr:../include,sfr:../inc,abs:/Developer/usr/clang-ide/lib/c++/v1,abs:/usr/local/include,abs:/usr/include/'
set wildignore+=CMakeFiles,*.o,*.obj,.git,.svn,CMakeCache.txt,*.d

filetype plugin on
set autoindent
set number
colorscheme monokai
command T CommandT
command MM wa | make
command MT wa | make | !./test
command LL wa | !pdflatex %


command Format w | execute '!$HOME/.vim/bin/form_matters %' | edit 
command FormatAll !find . -type f -iname '*.[c|h]pp' -exec $HOME/.vim/bin/form_matters {} \;
command FormatInstall !cp -f ~/.vim/clang-format-config ./.clang-format 
Bundle 'Valloric/YouCompleteMe'
