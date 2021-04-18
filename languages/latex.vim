

" inoremap $ $$<Left>
" inoremap $<Space> $<Space><Space>$<Left><Left>

" inoremap \[ \]<Left><Left>
" inoremap \[<Space> \[<Space><Space>\]<Left><Left><Left>


let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
let g:tex_conceal='abdmg'

augroup latex 
    autocmd! 
    autocmd FileType tex :set conceallevel=1
    autocmd FileType tex :set spell
    autocmd FileType tex :set spelllang=en_us
    autocmd FileType tex :hi clear Conceal
augroup END
