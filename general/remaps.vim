
" Make this more general
map <silent><leader>h :wincmd h<CR>
map <silent><leader>j :wincmd j<CR>
map <silent><leader>k :wincmd k<CR>
map <silent><leader>l :wincmd l<CR>

nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <Leader>ps :Rg<SPACE>


nnoremap <leader>) :source %<CR>
" Whick Key
nnoremap <silent> \ :WhichKey '<Space>'<CR>

nnoremap <C-/> gcc
" nnoremap <C-s> :w<Cr>
" Save
" nnoremap <C-+> :q!<Cr>

nnoremap <C-s> :w<cr>
" Close latex error tab
nnoremap <leader>tc :cclose<cr>
inoremap <C-s> <Esc>:w<cr>


nnoremap <C-Q> :wq<cr>
" Hasty Quit (made it difficult to avoid accidents)
nnoremap += :q!<CR>

" Paste and copy using system clipboard 
nnoremap <C-v> +p
noremap <C-c> +y

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






