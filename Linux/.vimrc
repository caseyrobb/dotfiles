call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'plasticboy/vim-markdown'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf'
Plug 'ethantrithon/elementary.vim'
Plug 'christoomey/vim-tmux-navigator'

call plug#end()

set paste
set nocompatible
set encoding=utf-8
set number
set tabstop=2
set autoindent
set shiftwidth=2
set expandtab
set showmatch
set hlsearch
set ignorecase
set noswapfile
set hidden
set rtp+=/usr/bin/fzf
"filetype off
set background=dark
colorscheme elementary
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE
filetype plugin indent on
syntax enable

nmap <C-n> :NERDTreeToggle<CR>
let g:NerdTreeGitStatusWithFlags = 1

" enable all Python syntax highlighting features
let python_highlight_all = 1

" go
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1
let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
let g:go_metalinter_autosave = 1

" coc-config
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint',
  \ 'coc-prettier',
  \ 'coc-json',
  \ ]

let g:airline_powerline_fonts = 1

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()
