
let g:vimtex_compiler_progname = "nvr"
let g:vimtex_view_general_viewer = "zathura"
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=1
let g:tex_conceal='abdmg'

let g:vimtex_compiler_engine = "lualatex"
let g:vimtex_compiler_latexmk = {
      \ 'options' : [
      \   '-pdflatex=lualatex',
      \   '-synctex=1',
      \   '-interaction=nonstopmode',
      \ ]}

nnoremap <Tab>p :VimtexCompile<CR>
nnoremap <Tab>t :cclose<CR>
