call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'lifepillar/vim-gruvbox8'
Plug 'tpope/vim-commentary'
Plug 'onemanstartup/vim-slim'
Plug 'jiangmiao/auto-pairs'
Plug 'bling/vim-bufferline'
Plug 'junegunn/fzf', { 'do': { -> fzf#install()  }  }
Plug 'junegunn/fzf.vim'
call plug#end()

set encoding=utf-8
set expandtab
set shiftwidth=2
set softtabstop=2
set incsearch
set ruler
set number
set relativenumber
set nobackup
set nowritebackup
set autoread
set backspace=indent,eol,start
set splitbelow
set splitright
set expandtab
set shiftwidth=2
set softtabstop=2
set hidden
set showcmd

au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn

colorscheme gruvbox8

autocmd FileType ruby setlocal shiftwidth=2 softtabstop=2
autocmd FileType php setlocal shiftwidth=4 softtabstop=4 tabstop=4 noexpandtab

let mapleader=","

let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

nnoremap <leader>d :NERDTreeToggle<CR>
nnoremap <leader>p :FZF<CR>

nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>
