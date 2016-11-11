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

set shell=/bin/sh

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
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'

" All of your Plugins must be added before the following line
call vundle#end()            " required
syntax enable
let mapleader = ","

filetype plugin indent on    " required
filetype plugin on
set background=light
colorscheme solarized

set clipboard=unnamed

set mouse=a
set scrolloff=5
set ttyfast

set backup                         " enable backup
set undofile                       " enable persistent undo
set backupdir=~/.vim/backup
set directory=~/.vim/tmp
set undodir=~/.vim/undo

set scrolloff=5

" change cursor when in insert mode (also works in tmux)
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

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

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Airline settings.
" ------------------

" Enable VIM Airline on default
let g:airline#extensions#tabline#enabled = 1

" Show buffer indices in VIM Airline
let g:airline#extensions#tabline#buffer_nr_show = 1

let g:airline_theme='solarized'
let g:solarized_termcolors = 256

" Use jj to escape
imap jj <Esc>

" Use tab and shift to cycle.
nnoremap <tab> <c-w>w
nnoremap <S-tab> <c-w>W

" Buffer management
noremap gn :bn<cr>
noremap gp :bp<cr>
noremap gd :BD<cr>

" Reload VIM
nnoremap <leader>r :so $MYVIMRC<cr>
nnoremap <leader><leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>m :NERDTreeTabsToggle<cr>
nnoremap <leader>s :w<cr>
nnoremap <leader><leader> :w<cr>
nnoremap <leader>S :wq<cr>
nnoremap <leader>e :quit<cr>
nnoremap <leader>E :quit!<cr>
nnoremap <leader>A :Autoformat<cr>

" ,o add empty line below without entering insert mode
nnoremap <leader>o o<ESC>

" " ,O add empty line below without entering insert mode
nnoremap <leader>O O<ESC>
