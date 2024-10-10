set number
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
syntax on
nnoremap <F5> :w<CR>: !gcc % -o %< && ./%<<CR>
nnoremap <F6> :w<CR>:!clang-format -i %<CR>:e!<CR>

call plug#begin('~/.local/share/nvim/plugged')
Plug 'mattn/emmet-vim'
Plug 'Valloric/YouCompleteMe'
Plug 'rhysd/vim-clang-format'
Plug 'tpope/vim-fugitive'
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-surround'
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'
call plug#end()

let g:python3_host_prog = '~/.venvs/nvim/bin/python'
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 'never'
set completeopt-=preview
