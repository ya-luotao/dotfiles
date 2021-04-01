local cmd = vim.cmd
local fn = vim.fn
local g = vim.g
local o = vim.o
local indent = 2

g.mapleader = ','

cmd [[packadd packer.nvim]]

require('packer').startup(
function()
  use {'wbthomason/packer.nvim', opt = true}
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use {'junegunn/fzf', dir = '~/.fzf', run = './install --all'}
  use {'junegunn/fzf.vim'}
  use {'dracula/vim', as = 'dracula'}
  use {'windwp/nvim-autopairs'}
  use {'windwp/nvim-ts-autotag'}
  -- use {'slim-template/vim-slim'}
  use {'tpope/vim-endwise'}
  use {'shougo/deoplete-lsp'}
  use {'shougo/deoplete.nvim', run = ':UpdateRemotePlugins'}
  use {'tpope/vim-commentary'}
  use {'kyazdani42/nvim-web-devicons'}
  use {'preservim/nerdtree'}
  -- use {'mustache/vim-mustache-handlebars'}
  -- use {'pangloss/vim-javascript'}
  use {'akinsho/nvim-bufferline.lua', requires = 'kyazdani42/nvim-web-devicons'}
  use {'jiangmiao/auto-pairs'}
  -- use {'mhinz/vim-signify'}
  use {'neovim/nvim-lspconfig'}
  use {'Xuyuanp/nerdtree-git-plugin'}
  use {'ryanoasis/vim-devicons'}
  -- use {'mxw/vim-jsx'}
  use {'sheerun/vim-polyglot'}
end
)

g['deoplete#enable_at_startup'] = 1

local ts = require 'nvim-treesitter.configs'
ts.setup {
  ensure_installed = 'maintained',
  highlight = {
    enable = true
  },
  indent = {
    enable = true
  }
}

require'nvim-ts-autotag'.setup {}
require'nvim-autopairs'.setup {}
require'bufferline'.setup {}

local nvim_lsp = require('lspconfig')

-- Use a loop to conveniently both setup defined servers 
-- and map buffer local keybindings when the language server attaches
local servers = { "html", "rome", "cssls", "sorbet", "jsonls" }
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {}
end

cmd 'colorscheme dracula'

vim.api.nvim_command('autocmd FileType php setlocal shiftwidth=4 softtabstop=4 tabstop=4 noexpandtab')
vim.api.nvim_command('au WinLeave * set nocursorline nocursorcolumn')
vim.api.nvim_command('au WinEnter * set cursorline cursorcolumn')

vim.api.nvim_set_keymap('n', '<C-N>', ':BufferLineCycleNext<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-P>', ':BufferLineCyclePrev<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>d', ':NERDTreeToggle<CR>', { noremap = true })

vim.wo.number = true

vim.bo.expandtab = true
vim.o.expandtab = true

vim.bo.shiftwidth = 2
vim.o.shiftwidth = 2

vim.bo.softtabstop = 2
vim.o.softtabstop = 2

vim.wo.number = true
vim.wo.relativenumber = true

vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = vim.fn['nvim_treesitter#foldexpr']()

vim.o.swapfile = false
vim.o.termguicolors = true
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.incsearch = true
vim.o.ruler = true -- global, show the line and column number of the cursor position.
vim.o.foldlevelstart = 20
vim.o.encoding = "UTF-8"

