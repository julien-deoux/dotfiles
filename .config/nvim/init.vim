set nocompatible
set showmatch
set ignorecase
set hlsearch
set tabstop=2
set softtabstop=2
set expandtab
set shiftwidth=2
set autoindent
set number
set wildmode=longest,list
set cc=80

filetype off
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle')

Plugin 'VundleVim/Vundle.vim'

Plugin 'w0rp/ale'

Plugin 'airblade/vim-gitgutter'

Plugin 'Shougo/deoplete.nvim'
let g:deoplete#enable_at_startup = 1

Plugin 'SirVer/ultisnips'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsSnippetDirectories = ['~/.config/nvim/UltiSnips', 'UltiSnips']

Plugin 'honza/vim-snippets'

Plugin 'alvan/vim-closetag'
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
let g:closetag_filetypes = 'html,xhtml,phtml'
let g:closetag_xhtml_filetypes = 'xhtml,jsx'
let g:closetag_emptyTags_caseSensitive = 1

Plugin 'jiangmiao/auto-pairs'

Plugin 'terryma/vim-multiple-cursors'

Plugin 'hail2u/vim-css3-syntax'

call vundle#end()
filetype plugin indent on

