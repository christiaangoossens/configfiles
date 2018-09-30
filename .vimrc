set nocompatible
filetype off
inoremap jj <Esc>
syntax on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'powerline/powerline-fonts'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'pangloss/vim-javascript'
Plugin 'elzr/vim-json'
Plugin 'leafgarland/typescript-vim'
Plugin 'stanangeloff/php.vim'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'stephpy/vim-php-cs-fixer'
" Plugin 'valloric/youcompleteme'
Plugin 'quramy/tsuquyomi'
Plugin 'airblade/vim-gitgutter'
Plugin 'moll/vim-bbye'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'tpope/vim-surround'
Plugin 'posva/vim-vue'
Plugin 'sekel/vim-vue-syntastic'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

let g:airline_powerline_fonts = 1

" Saving quicker
" Normal mode
nnoremap ;w :w<cr>
" Insert mode: Ctrl-S
inoremap <C-S> <Esc>:w<cr>i

set nowrap        " don't wrap lines
set tabstop=4     " a tab is four spaces
set backspace=indent,eol,start
                    " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                    "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                    "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

set hidden

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

set nobackup
set noswapfile

set pastetoggle=<F2>

set mouse=a

nnoremap ; :

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

map <F2> :NERDTreeToggle<CR>


autocmd BufNewFile,BufRead *.ts setlocal filetype=typescript

" | Tsuquyomi
" |------------------------
let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi']

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

nmap <leader>q :Bdelete<CR>
:nnoremap <Tab> :bnext<CR>
:nnoremap <S-Tab> :bprevious<CR>
nmap <leader>n :enew<CR>

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'


let NERDTreeQuitOnOpen=1

set t_vb=

let g:php_cs_fixer_rules = "@PSR2"          " options: --rules (default:@PSR2)
let g:php_cs_fixer_enable_default_mapping = 1     " Enable the mapping by default (<leader>pcd)
let g:php_cs_fixer_dry_run = 0                    " Call command with dry-run option
let g:php_cs_fixer_verbose = 0                    " Return the output of command if 1, else an inline information.
autocmd BufWritePost *.php silent! call PhpCsFixerFixFile()

map <F7> mzgg=G`z

augroup twig_ft
  au!
  autocmd BufNewFile,BufRead *.vue   set syntax=vue
augroup END

set clipboard=unnamedplus
nnoremap x "_x
nnoremap d "_d
nnoremap D "_D
vnoremap d "_d
nnoremap c "_c
vnoremap c "_c
nnoremap C "_C

nnoremap <leader>d ""d
nnoremap <leader>D ""D
vnoremap <leader>d ""d
nnoremap <leader>c ""c
nnoremap <leader>C ""C
vnoremap <leader>c ""c
