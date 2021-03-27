
syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent 
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir/
set undofile 
set incsearch
set termguicolors 
set number 
set relativenumber
set cursorline

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin(expand('~/.vim/plugged'))

Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive' 
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'kien/ctrlp.vim'
Plug 'ycm-core/YouCompleteMe'
Plug 'mbbill/undotree' 
Plug 'arcticicestudio/nord-vim' 
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdtree'

call plug#end()

" works with both enabled and disabled italic font option.
" Nord Settings
let g:nord_italic = 1

" One dark settings
let g:onedark_termcolors = 1 
let g:onedark_terminal_italics = 1

" Airline Settings 
let g:airline_theme='onedark'

syntax enable
colorscheme onedark
set bg=dark

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let mapleader = " "
let g:netrw_browse_split=2
let g:netrw_banner = 0
let g:netrw_winsize = 25

let g:ctrlp_use_caching = 0

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <Leader>ps :Rg<SPACE>
nnoremap <leader>e :! 

" Save
nnoremap <Leader>w :w <CR>
" Quick Save and Quit 
nnoremap <Leader>q :wq! <CR>

" Rust 
nnoremap <Leader>cc :!cargo check  

nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>

" YCM
nnoremap <silent> <Leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <Leader>gf :YcmCompleter FixIt<CR>

"Use `[g` and `]g` to navigate diagnostics
nmap <silent> <leader>[g <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>]g <Plug>(coc-diagnostic-next)
" GoTo code navigation.
nmap <silent> <leader>gd <Plug>(coc-definition)
nmap <silent> <leader>gy <Plug>(coc-type-definition)
nmap <silent> <leader>gi <Plug>(coc-implementation)
nmap <silent> <leader>gr <Plug>(coc-references)

" Nerdtree 
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
