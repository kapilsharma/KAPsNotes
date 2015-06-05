# Setting vim as PHP IDE

VIM is little difficult to start but once setup and you learn how to use it effectively, it is very easy and powerful.

Here we are stiing up vim as php IDE.

> Please note, it take too long to be a master in vim. If you are not hebitual of terminal and vim, and also can't spend lot of time, stop here and use any IDE like PHP Storm, Netbeans or simple editor like Subline Text, Notepad++, Atom etc.

Vim is very powerful but lot of available plugins make more powerful. Using these plugins, we can convert vim into very good IDE.

## Managing plugins

Managing plugins in vim is also not easy. However there is `Vundle` plugin which make managing plugins very easy. So first plugin I install in vim is `Vundle`. It can be installed as follow.

**Clone Vundle**

Make a clone of vundle, by running following command in your home directory.

```
cd ~
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

> Please note: Do not change path of checkout. Vundle must be cloned in `~/.vim/bundle/Vundle.vim`

Now vundle is present. However before we can install pligins using it, we must define `.vimrc` file. Create a file `.vimrc` in your home folder and add following code in it.

```
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

" Put your non-Plugin stuff after this line
```

This is just an example file, and we will be adding more plugins here. However with this, we are ready to do basic installation with following plugins:

* **Vundle** - To manage vundle by vundle :D
* **Vim-fugitive** - Pluging for helpful git commands from within vim
* **L9** - Dependency for few other plugins
* **Command-T** - Quick open files and buffer
* **php.vim** - PHP Syntax highlighting
* **[NERDTree](nerdtree.md)** - Tree view of project files.

Save .vimrc file and we are ready to install above plugins.

To install plugins, open vim and run following command

```
:PluginInstall
```

Other then installing plugins, other useful commands are:

* **:PluginList**  - Show currently installed plugins
* **:PluginClean** - REmove plugins, not listed in .vimrc. (Previously installed but not neded longer.
* **:h vundle**    - Help on vundle


