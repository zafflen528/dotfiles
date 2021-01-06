syntax on

set nocompatible
filetype plugin on

set number
set noerrorbells
set tabstop=4 softtabstop=4
set relativenumber
set shiftwidth=4
set clipboard^=unnamed,unnamedplus
set expandtab
set smartindent
set nu
set linebreak
"set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set splitbelow
set textwidth=80
set wildmenu
"set termwinsize=10x0
"set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

" best binding
imap jk <ESC>

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'
Plug 'https://github.com/ycm-core/YouCompleteMe.git'
Plug 'mbbill/undotree'
"Plug 'artur-shaik/vim-javacomplete2'
Plug 'https://github.com/jiangmiao/auto-pairs'
Plug 'junegunn/goyo.vim'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'tacsiazuma/easyjava.vim'

call plug#end()

"Appearance
colorscheme gruvbox
set background=dark

" -- Transparency --
"highlight Normal     ctermbg=NONE guibg=NONE
"highlight LineNr     ctermbg=NONE guibg=NONE
"highlight SignColumn ctermbg=NONE guibg=NONE


let mapleader = " "
let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25
let g:netrw_localrmdir='rm -r'
