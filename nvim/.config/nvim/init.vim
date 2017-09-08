" Plugins {{{
call plug#begin('~/.config/nvim/bundle')

Plug 'tpope/vim-sensible'
Plug 'itchyny/lightline.vim'
Plug 'cocopon/lightline-hybrid.vim'

call plug#end()
filetype plugin indent on

let g:vim_markdown_frontmatter = 1
" }}}

" Essential settings {{{
set number
set copyindent
set preserveindent
set cindent
set updatetime=250 		" Make things snappy
set fdm=marker			" Fold markers
set ignorecase			" Search case insensitive...
set smartcase			" ... but not if it begins with uppercase
set hlsearch			" Highlight found searches
set incsearch			" Shows the match while typing
set splitright			" Split vertical windows right
set splitbelow			" Split horizontal windows below
set lazyredraw			" Wait to redraw
set noswapfile			" Don't use swapfile
set nobackup			" Don't create backup
set autowrite			" Automatically save before :next, :make etc
set noshowmatch			" Do not show matching brackets by flickering
set noshowmode			" We show the mode with lightline
set nocursorcolumn		" Speed up syntax highlighting
set nocursorline

set undofile
set undolevels=500
set undoreload=500
set undodir=~/.config/nvim/tmp/undo/

autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4
autocmd FileType json setlocal expandtab shiftwidth=2 tabstop=2
" }}}

" Keybindings {{{
let mapleader = ","

" Fast saving
nnoremap <leader>w :w!<cr>
nnoremap <silent> <leader>q :q!<CR>

" Visual linewise up and down by default (and use gj gk to go quicker)
noremap <Up> gk
noremap <Down> gj
noremap j gj
noremap k gk

" Source (reload configuration)
nnoremap <silent> <F5> :so % <CR>

vnoremap <leader>y "+y
nnoremap <leader>Y "+yg_
nnoremap <leader>y "+y
nnoremap <leader>yy "+yy

nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P
" }}}

" Statusline {{{
let g:lightline = {
	\ 'colorscheme': 'hybrid'
	\ }
" }}}
" Clipboard settings {{{
" http://stackoverflow.com/questions/20186975
set clipboard^=unnamed
set clipboard^=unnamedplus
" }}}
