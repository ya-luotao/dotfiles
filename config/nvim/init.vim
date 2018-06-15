let mapleader = ","

set backspace=2
set nobackup
set nowritebackup
set noswapfile
set history=50
set ruler
set showcmd
set incsearch
set laststatus=2
set autowrite

set encoding=utf-8
set number
set relativenumber
set expandtab
set shiftwidth=2
set softtabstop=2
set nohlsearch

set rtp+=~/.config/nvim/bundle/Vundle.vim
set rtp+=/usr/local/opt/fzf
call vundle#begin()

if filereadable(expand("~/.shared_cfg/vimrc.bundles"))
  source ~/.shared_cfg/vimrc.bundles
end

call vundle#end()

filetype plugin indent on

set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
syntax enable
colorscheme nord
" colorscheme solarized

let g:airline_theme='bubblegum'

let g:tagbar_sort=0

au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn

set hidden
let g:buftabline_show=1
let g:buftabline_numbers=1

nnoremap <leader>a :Ag<space>
nnoremap <leader>d :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>
nnoremap <leader>ri :RunInInteractiveShell<space>
nnoremap <leader>tag :TagbarToggle<CR>
nnoremap <leader>undo :UndotreeToggle<CR>
nnoremap <leader>p :FZF<CR>
