# Using Vim as IDE

## Pathogen

Install [Pathogen](https://github.com/tpope/vim-pathogen) for easy plugin management.

```
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
```

open .vim file

```
vim .vim
```

and add following code.

```
execute pathogen#infect()
syntax on
filetype plugin indent on
```

