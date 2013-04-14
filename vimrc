
set nocompatible               " be iMproved
 filetype off                   " required!

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 " let Vundle manage Vundle
 " required! 
 Bundle 'gmarik/vundle'

 " My Bundles here:
 "
 " original repos on github
 "Bundle 'tpope/vim-fugitive'
 "Bundle 'Lokaltog/vim-easymotion'
 "Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
 "Bundle 'tpope/vim-rails.git'
 Bundle 'Valloric/YouCompleteMe'
 " vim-scripts repos
 "Bundle 'L9'
 "Bundle 'FuzzyFinder'
 " non github repos
" Bundle 'git://git.wincent.com/command-t.git'
 " ...

 filetype plugin indent on     " required!
 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..

" ### own stuff ###



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

"map <F2> :UpdateCodeCompletion<CR>

map <F4>  :setlocal spell spelllang=en<CR>

nmap <silent> <F11> :CommandTBuffer<CR>
nmap <C-F11> :CommandT<CR>

imap <F11> <Esc>:CommandTBuffer<CR>
imap <C-F11> <Esc>:CommandT<CR>

"imap <C-Space> <C-x><C-u>
"imap <C-@> <C-Space>

"set tags+=~/.vim/tags/usr_local_include_tags
"set tags+=~/.vim/tags/cpp
"set tags+=~/.vim/tags/project_tags
ino <F5> <c-r>=TriggerSnippet()<cr>
snor <F5> <esc>i<right><c-r>=TriggerSnippet()<cr>

let g:alternateSearchPath = 'sfr:../source,sfr:../src,sfr:../include,sfr:../inc,abs:/Developer/usr/clang-ide/lib/c++/v1,abs:/usr/local/include,abs:/usr/include/'

filetype plugin on
set autoindent
set number
colorscheme codeschool
command T CommandT
command MM wa | make
command MT wa | make | !./test


