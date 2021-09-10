syntax on

set nocompatible
filetype plugin on

set number
set noerrorbells
set tabstop=4 softtabstop=4
set hlsearch
set relativenumber
set shiftwidth=4
set clipboard=unnamedplus
set expandtab
set smartindent
set nu
set linebreak
"set nowrap
"set smartcase
set ignorecase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set splitbelow
set nohlsearch
"set textwidth=80
set wildmenu
"set termwinsize=10x0
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

" best binding
" imap jk <ESC>
map Q <C-w>
autocmd BufWritePre * :%s/\s\+$//e

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'
Plug 'mbbill/undotree'
Plug 'https://github.com/jiangmiao/auto-pairs'
Plug 'junegunn/goyo.vim'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'tacsiazuma/easyjava.vim'
Plug 'mattn/emmet-vim'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/Dinduks/vim-java-get-set'
Plug 'https://github.com/puremourning/vimspector'
Plug 'calviken/vim-gdscript3'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/lervag/vimtex'
Plug 'https://github.com/dracula/vim'
Plug 'https://github.com/chrisbra/Colorizer'
Plug 'https://github.com/preservim/nerdcommenter'

call plug#end()


"Appearance
colorscheme gruvbox
set background=dark

" -- Transparency --
highlight Normal     ctermbg=NONE guibg=NONE
highlight LineNr     ctermbg=NONE guibg=NONE
highlight SignColumn ctermbg=NONE guibg=NONE


let mapleader = " "
let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25
let g:netrw_localrmdir='rm -r'

let g:vim_markdown_folding_disabled = 1

"---Running programs---

map <F9> :term compiler %<CR>
map <F8> :Goyo <CR>
map <F1> :so ~/.config/nvim/init.vim <CR>
tnoremap <Esc> <C-\><C-n>
" emmet
map <leader>e <C-y>

" --- COC ---

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<Tab>" :
            \ coc#refresh()

" use <c-space>for trigger completion
inoremap <silent><expr> <c-space> coc#refresh()

" use <c-space>for trigger completion
"inoremap <silent><expr> <NUL> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    else
        call CocAction('doHover')
    endif
endfunction

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

autocmd FileType java map <leader>/ :%s!/\*\_.\{-}\*/!!g<Enter>
autocmd FileType c map <leader>/ :%s!/\*\_.\{-}\*/!!g<Enter>
autocmd FileType cpp map <leader>/ :%s!/\*\_.\{-}\*/!!g<Enter>

map <leader>y :%y<Enter>

set updatetime=300
