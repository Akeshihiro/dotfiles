syntax on

let mapleader = " "
let maplocalleader = " "

set number
set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set nohlsearch
set incsearch
set ignorecase
set smartcase

set mouse=a
set undofile

" Some helpful mappings
noremap <C-c> <Esc>

" Disable some keys
noremap <Space> <Nop>
noremap <CR> <Nop>
noremap <BS> <Nop>

" System clipboard and other useful stuff
noremap <Leader>y "+y
nnoremap <Leader>y "+yy
noremap <Leader>p "_dP
noremap <Leader>P "_d"+P
nnoremap <Leader>p "+p
nnoremap <Leader>P "+P

noremap <Leader>d "_d
nnoremap <Leader>d "_dd

" Navigate
noremap gs ^
noremap gh 0
noremap gl $

noremap j jzz
noremap k kzz
