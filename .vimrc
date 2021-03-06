let t_Co=256
set nocompatible              " be iMproved, required
filetype off                  " required


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'bufkill.vim'
Plugin 'Chiel92/vim-autoformat'
Plugin 'delimitMate.vim'
Plugin 'endwise.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'github-theme'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'L9'
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

syntax on
set background=dark
let g:solarized_termtrans=1
colorscheme solarized

set clipboard=unnamed
" set guifont=Source\ Code\ Pro\ for\ Powerline:h16

set mouse=a
set scrolloff=5
set ttyfast

set backup                         " enable backup
set undofile                       " enable persistent undo
set backupdir=~/.vim/backup
set directory=~/.vim/tmp
set undodir=~/.vim/undo

set tabstop=2
" show invisible chars
" set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
" show newline
" set list

" tab indents are 2
set shiftwidth=2

" columns for a tab
set softtabstop=2

" expand existing tabs to spaces
set expandtab

" set shell to bash
set shell=/bin/sh

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
let NERDTreeIgnore = ['\.pyc$', '\.aux']

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
" let g:airline_powerline_fonts = 1

" Use jj to escape
imap jj <Esc>

" Use tab and shift to cycle.
nnoremap <tab> <c-w>w
nnoremap <S-tab> <c-w>W

" Toggle line numbers
nnoremap <leader>tn :set number!<cr>

" Buffer management
noremap gn :bn<cr>
noremap gp :bp<cr>
noremap gd :BD<cr>

"CtrlP add file from .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
nnoremap <leader>ff :CtrlP<cr>
nnoremap <leader>fb :CtrlPBuffer<cr>

" Reload VIM
nnoremap <leader>r :so $MYVIMRC<cr>
nnoremap <leader><leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>m :NERDTreeTabsToggle<cr>
nnoremap <leader>s :w<cr>
nnoremap <leader>S :wq<cr>
nnoremap <leader>e :quit<cr>
nnoremap <leader>E :quit!<cr>
nnoremap <leader>ft :Autoformat<cr>

" VIM fugitive
nnoremap <leader>gs :Gstatus<cr><C-w>20+

" ,o add empty line below without entering insert mode
nnoremap <leader>o o<ESC>

" ,O add empty line below without entering insert mode
nnoremap <leader>O O<ESC>

" indentline character
let g:indentLine_char = '│'
" Press F6 to toggle color column

" Toggle colorcolumn
nnoremap <leader>tc :call <SID>ToggleColorColumn()<cr>
set colorcolumn=115
set tw=79       " width of document (used by gd)
set nowrap      " don't automatically wrap on load
set fo-=t       " don't automatically wrap text when typing
let s:color_column_old = 0
function! s:ToggleColorColumn()
  if s:color_column_old == 0
    let s:color_column_old = &colorcolumn
    windo let &colorcolumn = 0
  else
    windo let &colorcolumn=s:color_column_old
    let s:color_column_old = 0
  endif
endfunction
