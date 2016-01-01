# Setting Cent OS minimal for Headless selenium testing

> This article is first in the 3 part series of `Testing with selenium, Jenkins and PHP Unit`. Series include three posts:
>
> - Setting Cent OS minimal for headless selenium testing.
> - Understanding and setting selenium, composer and PHP Unit.
> - Understanding Jenkins, Phing and automate test build.

Black box testing is one of the important testing approach for any web based product. In black box testing, a tester do not know internal working of the software but only care about input (enter URL, fill forms etc) and confirm we get expected output.

As the product functionality and pages increases, black box testing needs more and more time to test everything. Obviously it is a human nature that a person gets bored if (s)he need to do same task over and over again and soon some test cases start slipping.

## Selenium

Selenium is simply a browser automation tool. It can simply help you automate tasks in browser. How we use it in our favor or how we automate browser depends on us.

How to use selenium is out of scope for this article. Please go through lot of excellent tutorials available for learning selenium.

## Setting up server.

Once we have our selenium test suite ready, we need to run these tests against the real product/project. However it is recommended to setup a different Jenkins and selenium server.

> This article is about setting a Jenkins and selenium server on fresh minimal Cent OS 7.

Still most of the server (should) run without GUI (graphical user interface) thus you have to do everything using commands. It also means there is no browser can be installed. So we need a way to install browser with out GIU.

## Install Cent OS 7 minimal.

We are not going into detail of installing CentOS minimal. Just boot from your DVD or bootable USB and follow instructions with minimal installation. Minimal installation is good as it install only minimal OS requirements which means no security issues but it also mean you need to install quite a few more softwares manually. Since it is a server, we should install only required softwares so minimal OS is best suited to us.

> **Pro-tip:** You may want to first setup everything locally using virtual box. It is always good to first test your steps before trying on production servers.

## Install other required softwares

### Setup network

First huddle with Cent OS 7 minimal, it do not install network. It means there isn o internet connectivity and you can not install any other software. So first thing we need to do is to setup network.

First, type “nmcli d” command in your terminal for quick list ethernet card installed on your machine:

```bash
[admin@phpreboot admin]# nmcli d
DEVICE  TYPE      STATE         CONNECTION
p2p2    ethernet  disconnected  --
lo      loopback  unmanaged     --
wlp3s0  wifi      unmanaged     --
```

- Type “nmtui” command in your terminal to open Network manager. After opening Network manager chose “Edit connection” and press Enter (Use TAB button for choosing options).
- Now choose you network interfaces and click “Edit”.
- Choose “Automatic” in IPv4 CONFIGURATION and check Automatically connect check box and press OK and quit from Network manager.
- Reset network services:

```bash
[admin@phpreboot admin]# service network restart
Restarting netwrok (via systemctl):             [ OK ]
[admin@phpreboot admin]#
```

- Run command `ping 8.8.8.8` to test.
- For better test, install some package form internet, say `vim` that we generally need.

```bash
[admin@phpreboot admin]# yum install vim-X11 vim-common vim-enhanced vim-minimal
```

### Setting keyboard layout

There are chances that your key board might not be working perfectly. Just try typing few special characters like `~!@#$%^&*()_+[]{};:'"<>/?`. If they are printed correctly, you need not to do any thing. However if they are not printing correctly, please follow instruction at  http://www.itsprite.com/centos-7-rhel-7-how-to-change-the-system-keyboard-layout/ to setup system keyboard layout.

### ifconfig

`ifconfig` is one of the most common command to detect our network and ip address. It is not enavles by default on Cent OS minimal edition. Run following command, as root, to install `ifconfig`.

```bash
yum provides ifconfig
yum install net-tools
```

> **Pro-tip:** You need to run all installation commands as root.

### Setup host name

Hostname, on command line appears after `@`. Command line by default print `[<username>@<hostname> <current working directory>]# `

To setup host name (or also system name), update file `/etc/hostname` and enter host name there.

You will need to logout and login again for the changes to take effect.

### update

If we are setting production server (well environment like that), we must always have latest security updates available. Run following command to install them:

```bash
yum update && yum upgrade
```

### Command line browser

Our server is not going to have browsers (at least not visible) and GUI. Having a command line browser can give us some quick and necessary minimal browsing, if and when required. We will also need it to test our apache installation that we are going to do in next step.

Run following command to install `links`, a command line browser.

```bash
yum install links
```

### Apache HTTP server

No we are not going to host any site on this server. Still I personally prefer to have apache ready on server, in case needed. This is a simple command but you may skip this step in case you do not want to have apache installed.

```bash
yum install httpd
```

We also need to allow http service through firewall and reload firewall.

```bash
firewall-cmd –add-service=http
firewall-cmd –reload
```

and restart Apache. Also we can make it to start automatically.

```bash
systemctl restart httpd.service
systemctl start httpd.service
systemctl enable httpd.service
```

Now test apache default page through links `links 127.0.0.1` or through web browser on other system in netwrok `http://ipaddress`.

### Installing PHP

We will need PHP for composer and PHP Unit. So lets install PHP with following commands.

```bash
yum install php
systemctl restart httpd.service
```

Now create file `var/www/html/phpinfo.php` and add following code in it.

```php
<?php
phpinfo();
```

run `links 127.0.0.1/phpinfo.php` to confirm php is correctly installed.

### Installing java

We will need java to run selenium and jenkins. We can install java with following command.

```bash
yum install java
```

We can confirm installed java version with command:

```bash
java -version
```

### Installing wget

Wget stands for `World wide web get` and is used to download files from internet. We will need it to download selenium, jenkins and any other tool when needed. To install `wget` run following command.

```bash
yum install wget
```

### Security enhanced linux

We don't need it for local test setup but if you are installing production server, you will need SE linux (any many more security settings). Production server security is a big topic in itself and out of scope of this article. Please ask your system administrator to install SE Linux for production server.

## Xvfb; installing, starting and stopping

> Xvfb or X virtual framebuffer is a display server implementing the X11 display server protocol. In contrast to other display servers, Xvfb performs all graphical operations in memory without showing any screen output.
>
> -- Wikipedia.

As suggested above, Xvfb provides a virtual GUI in memory. This is needed to run Firefox. Remember selenium is browser automation tool. If there is no browser, we can't automate it (or run selenim). On server, we generally use Xvfb to install browser (firefox in this case) and run selenium on firefox over Xvfb.

To install Xvfb and firefox, run following command

```bash
yum install xorg-x11-server-Xvfb
yum install firefox
```

Now we need to start Xvfb, before we can start selenium testing. To start Xvfb, run following command:

```bash
/path/to/Xvfb :1 -screen 0 1024x768x24 &
```

In above command, we need to replace `/path/to/Xvfb` with real Xvfb path. Generally it is `/usr/bin/Xvfb` but please cress verify. You can use `which Xvfb` command to get installation path of Xvfb.

Above command start Xvfb on display `:1` with screen resolution of 1024x768 `-screen 0 1024x768` and depth of 24 `x24`. `&` is used to run Xvfb in the background. If you want to see Xvfb logs, simple skip `&` but then you will need separate terminal to run other commands.

Once we start Xvfb in background (with `&`), we need to kill process to stop it. To fins process ID of Xvfb, run following command

```bash
ps -ef | grep X
```

It will return few running processes. Check for the `/path/to/Xvfb :1 -screen 0 1024x768x24 &` in name and note down its process id (first number). To stop process, run following command

```bash
kill -9 <process ID>
```

## firefox

Once we have Xvfb running, we can start firefox. Before that, we need to set environmental variable `DISPLAY` to tell firefox which display it need to use. To set display, run following command

```bash
export $DISPLAY =:1.0
```

And then start Firefox

```bash
firefox
```

### Firefox Errors

Most of the time, firefox will run without any warning. Below is a error message I got and its solution.

> GLib-GIO-Message: Using the 'memory' GSettings backend.  Your settings will not be saved or shared with other applications.

To solve above error, run following command

```bash
yum install dconf dconf-editor
```

## Going further.

In this article, we setup Cent OS 7 server for headless selenium testing. In the next article, we will setup selenium and a project for it.
