scriptencoding utf8

" Add this to your vimrc to make the backspace work like in most other programs:
set backspace=indent,eol,start

set nocompatible          " get rid of Vi compatibility mode.required?
set mouse=a               " enable mouse
set autoindent            " use the indent of the previoud line for a newly created line 
" set ruler                 " display 

"set 1 tab == 4 spaces
"set shiftwidth=4
"set tabstop=4
"set smarttab
"set wrap


set clipboard=unnamed
syntax on

" display line numbers
set nu
" show relative line numbers
set relativenumber 
" map
imap jj <Esc>

" key bindings for UltiSnipsExpandTrigger 
let g:UltiSnipsExpandTrigger="<c-e>"

" Consider all .yar/.yara files to be YARA files.
autocmd BufNewFile,BufRead *.yar,*.yara setlocal filetype=yara

" ###################
" # Color theme     #
" ###################
syntax enable
set background=dark
colorscheme solarized

" ##################
" # NERDTree settings 
" ##################
let NERDTreeMinimalUI = 1
" open NERDTree with ctrl+n
map <C-n> :NERDTreeToggle<CR>

"###### /Vundle ######
" Put this at the top of your .vimrc to use Vundle. Remove plugins you don't need, they are for illustration purposes.

set nocompatible              " be iMproved, required
filetype off                  " required

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
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'

Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

Plugin 'vim-syntastic/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'easymotion/vim-easymotion'
Plugin 'https://github.com/hotoo/pangu.vim.git'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
""Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
""Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" ########### All of your Plugins must be added before the following line
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
" ##### Vundle/ #####

