nnoremap <silent><leader>h :wincmd h<CR>
nnoremap <silent><leader>j :wincmd j<CR>
nnoremap <silent><leader>k :wincmd k<CR>
nnoremap <silent><leader>l :wincmd l<CR>

nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <Leader>ps :Rg<SPACE>

" Save
nnoremap <leader>w :w <CR>
" Quick Save and Quit 
nnoremap <leader>q :wq<CR>
" Hasty Quit (made it difficult to avoid accidents)
nnoremap += :q!<CR>

nnoremap <silent><Leader>+ :vertical resize +5<CR>
nnoremap <silent><Leader>- :vertical resize -5<CR>

nnoremap <leader>so :source %<CR>
" Whick Key
nnoremap <silent> \ :WhichKey '<Space>'<CR>

