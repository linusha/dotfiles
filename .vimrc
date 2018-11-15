set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'itchyny/lightline.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tmhedberg/SimpylFold'
Plugin 'JamshedVesuna/vim-markdown-preview'
Plugin 'iamcco/mathjax-support-for-mkdp'
Plugin 'iamcco/markdown-preview.vim'
Plugin 'Chiel92/vim-autoformat'
Plugin 'xuhdev/vim-latex-live-preview'
Plugin 'vim-ruby/vim-ruby'

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

"integration for github flavored markdown
let vim_markdown_preview_github=1

"settings for the lightline statusline
set laststatus=2
set noshowmode

"show line numbers
set number

"update time for gitgutter to work as expected
set updatetime=100

"set colorscheme for statusline
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ }

"set colorscheme for vim
syntax enable
set background=dark
colorscheme solarized

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

"set encoding to utf8
set encoding=utf-8

autocmd BufRead *.md command Preview MarkdownPreview
autocmd BufRead *.tex command Preview LLPStartPreview

set textwidth=80
