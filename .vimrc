"#########################################################
"Plugins with vim-plug
"#########################################################
call plug#begin('~/.vim/plugins')

Plug 'scrooloose/nerdtree',{ 'on': 'NERDTreeToggle'} 	" Nerdtree - tree file explorer plugin

call plug#end () 		" Initialise plugin system



"#########################################################
"Settings
"###########################################################

set background=dark		" Dark coloured background
set number 			" Display  line numbers
set relativenumber		" Display relative line numbers
set clipboard=unnamedplus 	" To activate to system clipboard by  default
syntax enable 			" To activate syntax highlighting
set linebreak			" To do line wrapping after the word (instead of in between a word)
set splitright			" Open new vertical buffers on right
set splitbelow			" ... and horizontal ones below

set showcmd			" display incomplete commands
set hlsearch			" highlight searches
set ignorecase			" ignore case while searching

set visualbell t_vb=		" turn off error beep/flash
set novisualbell		" turn off visual bell

filetype on			" detect type of file
filetype indent on 		" load indent file for specific file type
"#################################################################
" Keymaps
"#################################################################

" Gracefully handle holding shift too long affter : for common commands
cabbrev W w
cabbrev Q q
cabbrev Wq wq
cabbrev Tabe tabe
cabbrev Tabc tabc

" Don't need to hold down shift for : becuase I'm lazy
nnoremap ; :
noremap ;; ;
noremap ,. ,

" Map jj to escape
inoremap jk <Esc> 

" Map kk to # for easy writing markdown files

" File Tree browser (NERDTree)
map \ 	:NERDTreeToggle<CR>

" File Tree browser showing current file - pipe (Shift + backslash)
map \|	:NERDTreeFind<CR>


"#################################################################
"Color Scheme
"#################################################################
