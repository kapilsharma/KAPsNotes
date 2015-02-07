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

We may also want Guake to start at boot time. This can be done with following command:

```
sudo ln -s /usr/share/applications/guake.desktop /etc/xdg/autostart/
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

Setting vim is huge task in it self so I'm covering it in separate document. If you are interested to see how to setup vim as php ide, [click here](vim/README.md)

### Kate

Kate is my personal choice of editor. I like kate due to build in terminal which allow me to run few commands without leaving editor. Well I didn't knew about Guake earlier. Now even in Kate, I prefer to run commands using Guake but Kate is still my editor (habit) for simple text files. 

I **install Kate through Ubuntu Software Center**. However terminal do not work under Kate in Ubuntu. Reason, Kate, being KDE application, need `Kansole` (terminal program of KDE) but ubuntu ships `Terminal` by default. Se we need to install Kansole before we can use it in Kate

```
sudo apt-get install konsole
```

**Kate projets**

Adding projects in kate need some manual operation. Create a .kateproject file in project root directory and add following JSON in it (git git project)

```
{
  "name": "KAPsNotes",
  "files": [ { "git": 1 } ]
}
```

### Java

Java is needed for many softwares including IDE like PHP Storm, Netbeans etc. So installing java is next task.

I also do Java development so I install JDK but if you are not java developer, JRE is sufficient.

#### Open JDK

Open JDK is open source implementation of Java (Oracle's Java license is not very permisive)

```
sudo apt-get update
sudo apt-get install default-jre
sudo apt-get install default-jdk
```

#### Oracle JDK

It is easy to install oracle JDK through Python software repository

```
sudo apt-get install python-software-properties
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
```

Oracle JDK 7

```
sudo apt-get install oracle-java7-installer
```

Oracle JDK 8

```
sudo apt-get install oracle-java8-installer
```

Once we have both Open JRE and Oracle JRE, we can switch between them as followed

```
sudo update-alternatives --config java

There are 2 choices for the alternative java (providing /usr/bin/java).

Selection    Path                                            Priority   Status
------------------------------------------------------------
* 0            /usr/lib/jvm/java-7-oracle/jre/bin/java          1062      auto mode
  1            /usr/lib/jvm/java-6-openjdk-amd64/jre/bin/java   1061      manual mode
  2            /usr/lib/jvm/java-7-oracle/jre/bin/java          1062      manual mode

Press enter to keep the current choice[*], or type selection number: 
```

Enter number of Java implementation you want to use

Default JDK can also be selected similarly

```
sudo update-alternatives --config javac
```

