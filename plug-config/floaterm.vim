
" Rust 
" rsc -> rust check
" rs -> cargo run
" rst -> cargo test
nnoremap <Leader>rsc :FloatermNew --name=cargo cargo check<CR>
nnoremap <Leader>rst :FloatermNew --name=cargo cargo test<CR>
nnoremap <Leader>rs :FloatermNew --name=cargo cargo run<CR>

" Python REPL 
nnoremap <Leader>pyr :FloatermNew --name=python python<CR> 
" Javascript REPL
nnoremap <Leader>jsr :FloatermNew --name=node node<CR>
" Julia REPL
nnoremap <Leader>jlr :FloatermNew --name=julia julia<CR>

nnoremap <silent>++ :FloatermNew --name=Terminal<CR>

