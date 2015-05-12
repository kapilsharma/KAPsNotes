# Ubuntu setup document.

This document is about setting ubuntu for my personal use. However it an be followed by anyone to setup decent development environment on ubuntu. I generally work on PHP so first I'll setup PHP development environment.

This document is created for ubuntu 14.04

It expect only ubuntu is installed and nothing else is installed after OS.

## Remove advertisements

In Ubuntu start menu, while searching for any program or document, we also get online search results. This is frustration. So first thing, I shut down online search results.

Go to System settings > Security and privacy.

On `search` tab, mark `Include online search results` off. Wow, online search results will not disturb now.

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

## Lamp

### Apache

```
sudo apt-get update
sudo apt-get install apache2
```

### MySQL

```
sudo apt-get install mysql-server php5-mysql
sudo mysql_install_db
sudo mysql_secure_installation
```

### PHP

```
sudo apt-get install php5 libapache2-mod-php5 php5-mcrypt
```

By default, apache look for index.html file in requested path. We now need apache to look for index.php file first. To do that, open `/etc/apache2/mods-enabled/dir.conf` file and change

```
<IfModule mod_dir.c>
    DirectoryIndex index.html index.cgi index.pl index.php index.xhtml index.htm
</IfModule>
```

to 

```
<IfModule mod_dir.c>
    DirectoryIndex index.php index.html index.cgi index.pl index.xhtml index.htm
</IfModule>
```

Please note we put index.php first after DirectoryIndex. We must restart apache so that above changes can take effect.

```
sudo service apache2 restart
```

#### Installing PHP modules

We obviously need to install some php modules. To check the list of available php modules, run following command.

```
apt-cache search php5-
```

From the list, we can decide which modelus we need to install. Some of the common modules, which serve most of the requirements, can be installed as follow:

```
sudo apt-get install php5-mysql php5-curl php5-gd php5-intl php-pear php5-imagick php5-imap php5-mcrypt php5-memcache php5-ming php5-ps php5-pspell php5-recode php5-snmp php5-sqlite php5-tidy php5-xmlrpc php5-xsl php5-cli
```

### Testing setup

By default, apache serve files from `/var/www/html` folder. Lets create a file `info.php` in that folder and put following code in it.

```
<?PHP
phpinfo();
```

Save the file and visit URL `http://localhost/info.php. This will open a page with information about our LAMP setup.

### Virtual hosts

In the above example, we had a URL like `localhost/filename`. However in real projects, this not a very useful url, specially in case you work on many projects. If production url of our project is www.xyz.com, we might want to have dev.xyz.com as local dev box url. This devbox url is possible through virtual hosts.

nother reason of working with virtual hosts, as non root user, `var/www` directory do not belog to you. As developer, we must keep our projects like ~/dev/projectname/. This is also possible through virtual hosts.

/etc/apache2/sites-available/phptest.conf

```
<VirtualHost *:80>
        ServerAdmin kapshainfo@gmail.com
        ServerName kapil.phptest.com
        DocumentRoot /home/kapil/dev/test/phptest

        ErrorLog ${APACHE_LOG_DIR}/error.log
        CustomLog ${APACHE_LOG_DIR}/access.log combined

        <Directory /home/kapil/dev/test/phptest/>
                Options Indexes FollowSymLinks
                AllowOverride None
                Require all granted
        </Directory>
</VirtualHost>

## Curl

```
sudo apt-get install curl
```

## Composer

```
curl -sS https://getcomposer.org/installer | sudo php
```

shortcut

```
sudo mv composer.phar /usr/local/bin/composer
```

Run

```
sudo a2ensite phptest.conf
sudo service apache2 reload
sudo service apache2 restart
```

Add following line at last of `/etc/hosts`

```
127.0.0.1    kapil.phptest.com
```

##  Install curl

```
curl -sS https://getcomposer.org/installer | php
```

## Composer

```
curl -sS https://getcomposer.org/installer | php
```

Making shortcut

```
sudo mv composer.phar /usr/local/bin/composer
```

# Windows programs

Occationally, we need to install and run few windows program. Although not all, but we can run majority of windows programs on linux by using `wine` with or without `run on linux`.

## Installing wine

We need to add wine repository before we can install it

```bash
sudo add-apt-repository ppa:ubuntu-wine/ppa
sudo apt-get update
sudo apt-get install wine1.7
```

Installing dotnet framework redistributable 4.0

```bash
wget http://winetricks.googlecode.com/svn/trunk/src/winetricks
bash winetricks dotnet40
```

> Last command used to inatall wine version 1.7, which was latest at the time of writing. Please check latest version and replace `1.7` with that.
