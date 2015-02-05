# Ubuntu setup document.

This document is about setting ubuntu for my personal use. However it an be followed by anyone to setup decent development environment on ubuntu. I generally work on PHP so first I'll setup PHP development environment.

This document is created for ubuntu 14.04

It expect only ubuntu is installed and nothing else is installed after OS.

## Quick basic setup.

### Terminals

I do lot of operations on terminal so first thing I do is to instll few terminal programs

#### Terminator

Terminator is nice terminal program which allow dividing screen into multiple terminals. A nice feature and I can't live without it. So its the first program I install. I **install terminator through Ubuntu Software Center**.

#### Guake

This is another terminal application. While terminal is heavy weight, Guake is very light weight. It launch a transparent terminal on half screen to quickly fire some command. A handy tool for quick commands or commands with some documentation open in background. I **install Guake through Ubuntu Software Center**. However it have a small bug and sometimes it give error about `schema` file. To fix that bug, generate schema with following command.

```
gconftool-2 –install-schema-file=/usr/share/gconf/schemas/guake.schemas
```

### Update apt-get

Must update apt-get program before using it.

```
sudo apt-get update
```

### Git

Obviously as developer, we need git.

```
sudo apt-get install git
```

### Vim

Vim is difficult to master but once mastered, you cant be satisfied with any other editor. Although I am not vim master, I like lot of shortcuts available in it and still trying to be master of vim. So vim is the next thing I install on any linux platform. On ubuntu, we can install it with following command.

```
sudo apt-get install vim
```

### Kate

Kate is my personal choice of editor. I like kate due to build in terminal which allow me to run few commands without leaving editor. Well I didn't knew about Guake earlier. Now even in Kate, I prefer to run commands using Guake but Kate is still my editor (habit) for simple text files. 

I **install Kate through Ubuntu Software Center**. However terminal do not work under Kate in Ubuntu. Reason, Kate, being KDE application, need `Kansole` (terminal program of KDE) but ubuntu ships `Terminal` by default. Se we need to install Kansole before we can use it in Kate

```
sudo apt-get install konsole
```

