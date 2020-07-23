set nocompatible

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-endwise'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'slim-template/vim-slim'
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'nathangrigg/vim-beancount'
Plug 'hail2u/vim-css3-syntax'
Plug 'pangloss/vim-javascript'
Plug 'hashivim/vim-terraform'
Plug 'kchmck/vim-coffee-script'
Plug 'morhetz/gruvbox'
" Plug 'cormacrelf/vim-colors-github'
" Plug 'endel/vim-github-colorscheme'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  " Plug 'Shougo/deoplete.nvim'
  " Plug 'roxma/nvim-yarp'
  " Plug 'roxma/vim-hug-neovim-rpc'
endif
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'do': { -> fzf#install()  }  }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'ntpeters/vim-better-whitespace'
Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mileszs/ack.vim'
Plug 'mustache/vim-mustache-handlebars'

call plug#end()

autocmd vimenter * colorscheme gruvbox
" colorscheme github
" colorscheme nord

let mapleader=","

" let g:javascript_plugin_flow=1

let g:airline#extensions#tabline#enabled=1

" augroup javascript_folding
"   au!
"   au FileType javascript setlocal foldmethod=syntax
" augroup END

set nobackup
set nowritebackup
set noswapfile
set autoread
set backspace=indent,eol,start

set splitbelow " splitting a window will put the new window below the current one.
set splitright " splitting a window will put the new window right of the current one.

au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn

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

let g:ackprg='ag --nogroup --nocolor --column'

set showcmd

set encoding=utf-8

set expandtab
set shiftwidth=2
set softtabstop=2

autocmd FileType ruby setlocal shiftwidth=2 softtabstop=2
autocmd FileType php setlocal shiftwidth=4 softtabstop=4 tabstop=4 noexpandtab

if has('nvim')
  let g:deoplete#enable_at_startup=1
endif

set incsearch " while typing a search commad, show where the pattern, as it was typed so far, matches. the matched string is highlighted.
set ruler " show then line and column number of the cursor position, separated by a comma.
set number " print the line number in front of each line.
set relativenumber " show the line number relative to the line with the cursor in front of each line.

set hidden
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>

function s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1] =~ '\s'
endfunction

" inoremap <silent><expr> <Tab>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<Tab>" :
"       \ coc#refresh()

nnoremap <leader>d :NERDTreeToggle<CR>
nnoremap <leader>p :FZF<CR>

xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
