
call plug#begin(expand('~/AppData/Local/nvim/__plugins__'))

" Themes
Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim' 
Plug 'joshdick/onedark.vim' 

" Language Support
" Plug 'leafgarland/typescript-vim'
Plug 'sheerun/vim-polyglot'
Plug 'rust-lang/rust.vim'
Plug 'lervag/vimtex'

" Visual
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'

" Autocomplete
" Plug 'ycm-core/YouCompleteMe'
Plug 'kien/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'branch' : 'release'}

" Functionalities
Plug 'jiangmiao/auto-pairs'
Plug '/voldikss/vim-floaterm'
Plug 'mbbill/undotree' 

" File Navigation
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Ease of Life
Plug 'liuchengxu/vim-which-key'
Plug 'liuchengxu/vista.vim'

" ETC
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive' 
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'

call plug#end()

