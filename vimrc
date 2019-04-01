if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

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
set nojoinspaces

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

set rtp+=/usr/local/opt/fzf


if filereadable(expand("~/.shared_cfg/vimrc.bundles"))
  source ~/.shared_cfg/vimrc.bundles
end

set background=dark
colorscheme nord

let g:airline_theme='bubblegum'

let g:tagbar_sort=0

" https://stackoverflow.com/questions/53657545/nerdtree-g-before-folder-and-file-names-osx-terminal-vim
let g:NERDTreeNodeDelimiter = "\u00a0"

" let g:wakatime_PythonBinary = '/usr/bin/python'
" let g:wakatime_PythonBinary = '/Users/luotao/.pyenv/shims/python'

" let g:hardmode = 1

au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn

set hidden
let g:buftabline_show=1
let g:buftabline_numbers=1

nnoremap <leader><leader> <C-^>
nnoremap <leader>a :Ag<space>
nnoremap <leader>d :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>
nnoremap <leader>tag :TagbarToggle<CR>
nnoremap <leader>undo :UndotreeToggle<CR>
nnoremap <leader>p :FZF<CR>
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>
