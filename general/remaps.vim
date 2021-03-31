nnoremap <silent><leader>h :wincmd h<CR>
nnoremap <silent><leader>j :wincmd j<CR>
nnoremap <silent><leader>k :wincmd k<CR>
nnoremap <silent><leader>l :wincmd l<CR>

nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <Leader>ps :Rg<SPACE>


nnoremap <leader>) :source %<CR>
" Whick Key
nnoremap <silent> \ :WhichKey '<Space>'<CR>
" 
" nnoremap <C-s> :w<Cr>
" Save
" nnoremap <C-+> :q!<Cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>q :wq<cr>
" Hasty Quit (made it difficult to avoid accidents)
nnoremap += :q!<CR>

" Paste and copy using system clipboard 
nnoremap <leader>p +p
noremap <leader>y +y

" Better tabbing
vnoremap < <gv
vnoremap > >gv

nnoremap <TAB> :bprevious<CR>
nnoremap <S-TAB> :bnext<CR>

nnoremap <C-j> :resize -2<CR>
nnoremap <C-k> :resize +2<CR>
nnoremap <C-h> :vertical resize -2<CR>
nnoremap <C-l> :vertical resize +2<CR>


" Terminal Remaps
tnoremap <C-[> <C-\><C-n>
nnoremap ** :vsplit<CR>:wincmd l<CR>:terminal<CR>






