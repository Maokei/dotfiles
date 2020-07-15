if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
    Plug 'neoclide/coc.nvim', {'branch': 'release'} "Conqer of completion :CocInstall coc-json coc-tsserver
    Plug 'ternjs/tern_for_vim', { 'do': 'npm install && npm install -g tern' }
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    Plug 'tyrannicaltoucan/vim-quantum'
    Plug 'pangloss/vim-javascript'      "javascript support
    Plug 'leafgarland/typescript-vim'   "typescript support
    Plug 'maxmellon/vim-jsx-pretty'     "JS and JSX syntax
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'scrooloose/nerdtree'
    Plug 'junegunn/fzf'
    Plug 'junegunn/fzf.vim'
    Plug 'mattn/emmet-vim'
    Plug 'airblade/vim-gitgutter'
    Plug 'sheerun/vim-polyglot'
    Plug 'ap/vim-css-color'
    Plug 'ayu-theme/ayu-vim'
    Plug 'jparise/vim-graphql'          "GraphQL syntax
call plug#end()

let g:coc_global_extensions = [ 'coc-tsserver' ]

map <C-o> :NERDTreeToggle<CR>
let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
  
"Vim linenumber"
set number

"default tab"
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

"javascript"
autocmd FileType javascript setlocal shiftwidth=4 tabstop=4 softtabstop=0 expandtab

 "theme"
set termguicolors
set background="dark"
"let ayucolor="light"  " for light version of theme
let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme
colorscheme ayu
