if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'ternjs/tern_for_vim', { 'do': 'npm install && npm install -g tern' }
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    Plug 'tyrannicaltoucan/vim-quantum'
    Plug 'pangloss/vim-javascript'      "javascript support
    Plug 'leafgarland/typescript-vim'   "typescript support
    Plug 'maxmellon/vim-jsx-pretty'     "JS and JSX syntaxa
    Plug 'elzr/vim-json'                "Json"
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'scrooloose/nerdtree'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'             " Set up fzf and fzf.vim
    Plug 'mattn/emmet-vim'
    Plug 'airblade/vim-gitgutter'
    Plug 'sheerun/vim-polyglot'
    Plug 'ap/vim-css-color'
    Plug 'ayu-theme/ayu-vim'
    Plug 'jparise/vim-graphql'          "GraphQL syntax
    Plug 'tomlion/vim-solidity'
call plug#end()

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

map <C-o> :NERDTreeToggle<CR>
let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
  
"Vim linenumber"
set number

" Allow copy and paste from system clipboard
set clipboard=unnamed

"default tab"
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

"javascript"
autocmd FileType javascript setlocal shiftwidth=4 tabstop=4 softtabstop=0 expandtab

" theme"
set termguicolors
set background="dark"
"let ayucolor="light"  " for light version of theme
let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme
colorscheme ayu

" CoC extensions
let g:coc_global_extensions = ['coc-solargraph', 'coc-tsserver', 'coc-json']

" Add CoC Prettier if prettier is installed
if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

" Add CoC ESLint if ESLint is installed
if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)
