# Cent OS

Cent OS is generally used as server operating system. Most of the time, we use minimal install on the server. With minimal install, we need to install few softwares to make it work.

## Networking

Biggest and first issue, Cent OS minimal install do not have networking enabled. Please follow following steps to enable networking in Cent OS

- [x] [CentOS 7](CentOS/Network/CentOS7.md)

## Basic setup

Minimal install also need some basic setup and we need to install few more programs, say in my case Apache, MySQL (Maria DB), PHP (LAMP setup). This section is about basic setup.

- [ ] [Setup keyboard mapping](CentOS/Basic/keyboard)
  - There are fare chances that your keyboard might not be working properly. For example, just type few symbols like `|\]{!@#$%^&*()_=/><`. If they are printed correctly, you may skip this step. However if they wee not printed correctly, click above link to setup your keyboard's key mapping.
  - http://www.itsprite.com/centos-7-rhel-7-how-to-change-the-system-keyboard-layout/
- ifconfig
  - yum provides ifconfig
  - yum install net-tools
  - http://www.unixmen.com/ifconfig-command-found-centos-7-minimal-installation-quick-tip-fix/
- [ ] [setup](CentOS/Basic/basic.md)
  - http://www.tecmint.com/things-to-do-after-minimal-rhel-centos-7-installation

# Xvfb & firefox

sudo yum install xorg-x11-server-Xvfb

Sudo yum install firefox

sudo /usr/bin/Xvfb :1 -screen 0 1024x768x24 &

firefox

# Selenium

```
cd ~
mkdir selenium
cd selenium
wget http://goo.gl/PJUZfa
mv PJUZfa selenium-server-standalone-2.9.0.jar
java -jar selenium-server-standalone-2.9.0.jar
```

# composer

```
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
```

# Create project and install PHPUnit-selenium

```
cd ~
mkdir projects && cd projects
mkdir seleniumtest
cd seleniumtest
sudo yum install php-xml
sudo service httpd restart
composer require "phpunit/phpunit=~4.8"
composer require "phpunit/phpunit-selenium=~1.2"
```
