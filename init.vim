call plug#begin(stdpath('config') . '/plugged')

Plug 'ellisonleao/gruvbox.nvim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tomlion/vim-solidity'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'
Plug 'tomlion/vim-solidity'

call plug#end()

set encoding=utf-8
set hidden
set nobackup
set nowritebackup
set updatetime=300
set shortmess+=c
set number
set showmatch
set hlsearch
set showcmd
set ignorecase
set tabstop=4
set shiftwidth=4
set undolevels=1000
set splitbelow
set splitright
set autoindent
set mouse=a
set autoread
set expandtab
set wrap

set termguicolors
set background=dark
colorscheme gruvbox

syntax on
set clipboard=unnamedplus

filetype plugin indent on
filetype plugin on

set noswapfile
set backupdir=~/.cache/vim

let g:coc_global_extensions = [
  \ 'coc-tsserver'
  \ ]

if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif
