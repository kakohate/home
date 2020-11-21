call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'vim-jp/vimdoc-ja'
Plug 'dense-analysis/ale'

call plug#end()

if has('autocmd')
    augroup ReadFile
        autocmd!
        autocmd BufRead * if line('''"') > 0 && line('''"') <= line('$') | call execute('norm g`"zz') | end
    augroup END
end

set background=dark
set clipboard^=unnamedplus
set completeopt=menuone,noselect
set equalalways
set helplang=ja,en
set hlsearch incsearch showcmd
set keywordprg=:Man
set laststatus=2
set mouse=a
set nofoldenable foldmethod=indent
set noswapfile nobackup
set number
set showmatch matchtime=1
set showtabline=2
set splitright
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab autoindent smartindent smarttab
set timeoutlen=100
set virtualedit=all
set wildmenu wildmode=longest,full


let g:ale_fixers = {}
let g:ale_fixers['ruby'] = ['rufo']
let g:ale_fix_on_save = 1

filetype plugin indent on
syntax on
colorscheme gruvbox
