call plug#begin('~/.vim/plugged')

        Plug 'whatyouhide/vim-gotham'
        Plug 'junegunn/vim-easy-align'
	Plug 'airblade/vim-gitgutter'
	Plug 'tpope/vim-fugitive'
	Plug 'bling/vim-airline'
	Plug 'vim-scripts/c.vim'
        Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
        Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
        " ...

        call plug#end()

"Enable filetype plugins"
filetype on
filetype plugin on
filetype indent on "File type based indentation"

"set background=dark"
"let base16colorspace=256"  " Access colors present in 256 colorspace"

"Color theme"
colorscheme gotham



"window panes switch"
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Completion C-like langues"
"comments hate explicit end characters, if starting a new line in the middle of a comment automatically"
autocmd FileType c,cpp,java set formatoptions+=ro
autocmd FileType c set omnifunc=ccomplete#Complete

"fixed indentation xml, css of 2"
autocmd FileType html,xhtml,css,xml,xslt set shiftwidth=2 softtabstop=2

"Completion xhtml"
autocmd FileType xhtml,html set omnifunc=hmtlcomplete#CompleteTags

"Completion css"
autocmd FileType css set omnifunc=csscomplete#CompleteCss

"Complete xml"
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags

"Complete 2 space indent vim,lua,nginx"
autocmd FileType vim,lua,nginx, set shiftwidth=2 softtabstop=2

"makefile, don't expand tabs to spaces"
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0

"C.vim enable cmake and doxygen"
let g:C_UseTool_cmake = 'yes'
let g:C_UseTool_doxygen = 'yes'

"Airline"
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

"NERDtree settings"
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
