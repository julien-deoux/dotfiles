" Julien Déoux <julien.deoux@telecomnancy.net>

" Plugin loading
" --------------
execute pathogen#infect()

" Appearance
" ----------
syntax on
colorscheme peachpuff
set number

" Typing behavior
" ---------------
set smartindent
filetype plugin indent on
set tabstop=4
set shiftwidth=4

" Syntastic
" ---------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Airline
" -------
set laststatus=2
let g:airline_theme='luna'
let g:airline_powerline_fonts = 1
