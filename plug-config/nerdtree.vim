
" NerdTree always change directory
let g:NERDTreeChDirMode = 2
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.git$']

" Nerdtree 
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>