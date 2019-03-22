execute pathogen#infect()

filetype on
syntax on

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

let ayucolor="mirage"
set bg=dark
colorscheme ayu

set guifont=Dank\ Mono:h18
highlight ColorColumn ctermbg=DarkGray
set colorcolumn=100
set number relativenumber

let mapleader=" "

set hidden
set history=100

filetype plugin indent on
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent
set backspace=2

" Get rid of swap files
set backupdir=/tmp//
set directory=/tmp//
set undodir=/tmp//

" Remove whitespaces on save
autocmd BufWritePre * :%s/\s\+$//e

" Highlight found words on search
set hlsearch

" Cancel search with leader /
nnoremap <silent> <leader>/ :nohlsearch <cr>

" Switch back and forth between current and last opened file
nnoremap <Leader><Leader> :e#<CR>

" Ignore node_modules/dist/git/etc files
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist|.cache)|(\.(swp|ico|git|svn))$'

" NERDTree
" Display hidden files
let NERDTreeShowHidden=1

" Toggle display of tree with leader + n
nmap <leader>n :NERDTreeToggle<CR>

" Locate the focused file in the tree with <Leader> + j
nmap <leader>j :NERDTreeFind<CR>

" Ignore useless files
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp', 'node_modules', '.git']

" GitGutter
" Always show the gutter so the editor doesn't change size
set signcolumn=yes

" Update vim plugins quicker
set updatetime=100

" Highlight everything on file open so highlighting doesn't randomly break
" while scrolling
autocmd FileType vue syntax sync fromstart

" Switch between buffers quicker
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>
