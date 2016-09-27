let t_Co=256
set nocompatible              " be iMproved, required
set number              " set line numbers
filetype off                  " required

set tabstop=2

" tab indents are 2
set shiftwidth=2

" columns for a tab
set softtabstop=2

" expand existing tabs to spaces
set expandtab

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'bufkill.vim'
Plugin 'Chiel92/vim-autoformat'
Plugin 'delimitMate.vim'
Plugin 'endwise.vim'
Plugin 'github-theme'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'mxw/vim-jsx'
Plugin 'pangloss/vim-javascript'
Plugin 'Solarized'
Plugin 'The-NERD-tree'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-colors-solarized'

" All of your Plugins must be added before the following line
call vundle#end()            " required
syntax enable
let mapleader = ","

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
" colorscheme
set background=light
colorscheme solarized

set mouse=a
set scrolloff=5
set ttyfast

" NERDTree settings.
" ------------------

" Set nerdtree direction arrow to not be used as fonts.
" let g:NERDTreeDirArrows=0

" Switch between nerdtree and editor using tabs.
let NERDTreeMapOpenInTab='\t'

" Keep NerdTree to the left.
let g:NERDTreeWinPos = "left"
let g:formatters_javascript = ['jscs']

" Dont show .pyc files.
let NERDTreeIgnore = ['\.pyc$']

" Airline settings.
" ------------------

" Enable VIM Airline on default
let g:airline#extensions#tabline#enabled = 1

" Show buffer indices in VIM Airline
let g:airline#extensions#tabline#buffer_nr_show = 1

let g:airline_theme='solarized'
let g:solarized_termcolors = 256

" Use jj to escape
:imap jj <Esc>

" Use tab and shift to cycle.
nnoremap <tab> <c-w>w
nnoremap <S-tab> <c-w>W

" Buffer management
map gn :bn<cr>
map gp :bp<cr>
map gd :BD<cr>

" Reload VIM
noremap <Leader>r :so $MYVIMRC<CR>
noremap <Leader>m :NERDTreeTabsToggle<CR>
noremap <Leader>s :update<CR>
noremap <Leader>S :wq<CR>
noremap <Leader>e :q<CR>
noremap <Leader>E :q!<CR>
noremap <D-s> :w<CR>
noremap <Leader>A :Autoformat<CR>
