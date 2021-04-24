
" Make this more general
map <silent><leader>h :wincmd h<CR>
map <silent><leader>j :wincmd j<CR>
map <silent><leader>k :wincmd k<CR>
map <silent><leader>l :wincmd l<CR>

nnoremap <C-s> :w<CR>
nnoremap <C-q> :wq<CR>
nnoremap <C-+> :q!<CR>

inoremap <C-s> <Esc>:w<CR>
inoremap <C-q> <Esc>:wq<CR>
inoremap <C-+> <Esc>:q!<CR>

nnoremap <leader>us :UndotreeShow<CR>
nnoremap <leader>ut :UndotreeToggle<CR>

nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <Leader>ps :Rg<SPACE>


nnoremap <C-)> :source %<CR>
" Whick Key
nnoremap <silent> \ :WhichKey '<Space>'<CR>

" Remap C-/ for comments
nmap <C-_>   <Plug>NERDCommenterToggle
vmap <C-_>   <Plug>NERDCommenterToggle<CR>gv

nnoremap <C-s> :w<cr>
" Close latex error tab
nnoremap <leader>tc :cclose<cr>
inoremap <C-s> <Esc>:w<cr>



" Paste and copy using system clipboard 
nnoremap <C-v> +p
noremap <C-y> +y

" Better tabbing
vnoremap < <gv
vnoremap > >gv

nnoremap <silent><tab> :bprevious<cr>
nnoremap <silent><S-TAB> :bnext<CR>

nnoremap <silent><C-j> :resize -2<CR>
nnoremap <silent><C-k> :resize +2<CR>
nnoremap <silent><C-h> :vertical resize -2<CR>
nnoremap <silent><C-l> :vertical resize +2<CR>


" Terminal Remaps
tnoremap <C-[> <C-\><C-n>
nnoremap <C-\> :wincmd v<CR>:wincmd l<CR>:terminal<CR>
" nnoremap ** :wincmd v<CR>:wincmd l<CR>:terminal<CR>






