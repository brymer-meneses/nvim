 
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
set undodir=~/AppData/Local/nvim/__undodir__/
set undofile 
set incsearch
set termguicolors 
set number 
set relativenumber
set cursorline
set clipboard=unnamedplus
set formatoptions-=cro

" let g:netrw_browse_split=2
" let g:netrw_banner = 0
" let g:netrw_winsize = 25

" Set Defaul Shell as PowerShell
set shell=powershell shellquote=( shellpipe=\| shellredir=> shellxquote=
set shellcmdflag=-NoLogo\ -NoProfile\ -ExecutionPolicy\ RemoteSigned\ -Command

highlight Normal guifg=#e0e0e0 guibg=#242424 gui=NONE ctermfg=254 ctermbg=235 cterm=NONE
highlight NonText guifg=#99968b guibg=#242424 gui=NONE ctermfg=246 ctermbg=235 cterm=NONE



