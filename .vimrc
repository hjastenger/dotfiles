set nocompatible              " be iMproved, required
set number		      " set line numbers
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

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" VIM fugitive git plugin.
Plugin 'tpope/vim-fugitive'
" Github color scheme.
Plugin 'github-theme'
" Nerdtree navigation plugin.
Plugin 'The-NERD-tree'
" Ruby auto add end statements plugin
Plugin 'endwise.vim'

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
" colorscheme
colorscheme github

" Set nerdtree direction arrow to not be used as fonts.
let g:NERDTreeDirArrows=0
" Switch between nerdtree and editor using tabs.
let NERDTreeMapOpenInTab='\t'

" Use jj to escape
:imap jj <Esc>

" Use tab to switch between navigation and editor
nnoremap <tab> <c-w>w

" Save
inoremap <C-s>     <C-O>:update<cr>
nnoremap <C-s>     :update<cr>

" Start NERDTree when VIM launches
autocmd VimEnter * NERDTree

" Automatically close NERDTree after last buffer is closed.
" Link: http://stackoverflow.com/questions/2066590/automatically-quit-vim-if-nerdtree-is-last-and-only-buffer
function! s:CloseIfOnlyControlWinLeft()
  if winnr("$") != 1
    return
  endif
  if (exists("t:NERDTreeBufName") && bufwinnr(t:NERDTreeBufName) != -1)
        \ || &buftype == 'quickfix'
    q
  endif
endfunction
augroup CloseIfOnlyControlWinLeft
  au!
  au BufEnter * call s:CloseIfOnlyControlWinLeft()
augroup END

