" Use vim, no vi
set nocompatible
" Required
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" From next line to 'call vundle#end()', we will define plugins we need.
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" L9 is Vim-Script library which provide some utility functions for programming in vim.
" Needed by few other plugins so lets install L9.
Plugin 'L9'

" Helpful in opening files and buffers with a minimal number of keystrokes
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'

" PHP.vim: Better Syntax highlighting for php
Plugin 'StanAngeloff/php.vim'

" NERDTree: Open project files on LHS like IDE.
Plugin 'scrooloose/nerdtree'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - Show currently installed plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
