" Julien Déoux <julien.deoux@telecomnancy.net>

" ------------------
"   Plugin loading  
" ------------------

execute pathogen#infect()


" -------------------
"   Typing behavior  
" -------------------

set smartindent
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete
set tabstop=4
set shiftwidth=4
autocmd Filetype text,tex,plaintex set textwidth=80


" --------------
"   Appearance  
" --------------

syntax on
colorscheme peachpuff
set relativenumber
set number
autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber
set list
set listchars=tab:\|\ 


" ---------------
"   Keybindings  
" ---------------

" Neutral mode
" ------------

" Easier split navigations 
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" More natural split opening
set splitbelow
set splitright

" Faster resizing
nnoremap <left> :vertical resize -5 <CR>
nnoremap <right> :vertical resize +5 <CR>
nnoremap <up> :resize -5 <CR>
nnoremap <down> :resize +5 <CR>

" Better oasting
set pastetoggle=<F2>


" -------------
"   Syntastic  
" -------------

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

nnoremap <F2> :SyntasticCheck <CR>
nnoremap <F3> :SyntasticReset <CR>

" -----------
"   Airline  
" -----------

set laststatus=2
let g:airline_theme='luna'
let g:airline_powerline_fonts = 1


" -------------
"   UltiSnips
" -------------

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<C-B>"
let g:UltiSnipsJumpBackwardTrigger="<C-Z>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetsDir="~/.vim/UltiSnips"


" -------------
"   vim-clang
" -------------

let g:clang_cpp_options = '-std=c++14'
