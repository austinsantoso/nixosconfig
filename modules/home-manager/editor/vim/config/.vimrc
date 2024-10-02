syntax on
set termguicolors

set number relativenumber
set encoding=UTF-8
set incsearch
set ignorecase
set smartcase

" Tab Settings Indentation settings
" using hard tabs
set tabstop=2
" when indenting with '>', use 4 spaces width
set shiftwidth=2
set softtabstop=2
" On pressing tab, insert space
" set expandtab
" delete all spaces till tabstop
set smarttab
set nowrap


" Cursorline and columnline
set cursorline
set cursorcolumn

set noswapfile
set nowritebackup
set noundofile

" colorschem - change accordingly
colorscheme habamax

" ===========================================================
" MAPPINGS
" ===========================================================
" leader key
let mapleader = ' '
" Splitting
set splitbelow splitright

" Shortcutting split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Make adjusting sizes a bit more friendly
nnoremap <silent> <A-Left> :vertical resize -3<CR>
nnoremap <silent> <A-Right> :vertical resize +3<CR>
nnoremap <silent> <A-Up> :resize +3<CR>
nnoremap <silent> <A-Down> :resize -3<CR>

" Shortcut Split Opening
nnoremap <leader>h :split<Space>
nnoremap <leader>x :split<Space>
nnoremap <leader>v :vsplit<Space>

" map S to replace All
nnoremap S :%s//gci<Left><Left><Left><Left>

" tab to cycle buffers
nnoremap <tab> :tabnext<cr>
nnoremap  <s-tab> :tabprevious<cr>


" indent does not get rid of visual block
vmap > >gv
vmap < <gv

" remap to cycle jump list
nnoremap <leader>i <C-i>
nnoremap <leader>o <C-o>

" n forward search
" N backward search
" and stays in center screen
nnoremap <expr> n (v:searchforward ? 'nzzzv' : 'Nzzzv')
nnoremap <expr> N (v:searchforward ? 'Nzzzv' : 'nzzzv')

" shift + Q to run macro stored at q
nnoremap Q @q
