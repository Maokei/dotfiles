if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'ternjs/tern_for_vim', { 'do': 'npm install && npm install -g tern' }
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    Plug 'tyrannicaltoucan/vim-quantum'
    Plug 'mxw/vim-jsx'
    Plug 'pangloss/vim-javascript'
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
call plug#end()

let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_ignore_case = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#enable_camel_case = 1
let g:deoplete#enable_refresh_always = 1
let g:deoplete#max_abbr_width = 0
let g:deoplete#max_menu_width = 0
let g:deoplete#omni#input_patterns = get(g:,'deoplete#omni#input_patterns',{})
let g:tern_request_timeout = 1
let g:tern_request_timeout = 6000
let g:tern#command = ['tern']
let g:tern#arguments = [' — persistent']

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
