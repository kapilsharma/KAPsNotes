# Homestead
Homestead is Laravel's official pre-packaged vagrant box. It contains:

* Ubuntu 14.04
* PHP 5.6
* HHVM
* Nginx
* MySQL
* Postgres
* Node (With Bower, Grunt, and Gulp)
* Redis
* Memcached
* Beanstalkd
* Laravel Envoy
* Fabric + HipChat Extension

## Installation
Since Homestead is vagrant box, its prerequisite are:

* Oracle Virtual box
* Vagrant

I assum these softwares are already installed on your system.

### Adding the Homestead box.

```
vagrant box add laravel/homestead
```

This will download whole Box which include Ubuntu 14.04. So download will take some time but fortunately this is one time process. Alternatively, if any one in your team already downloaded Homestead, you need not to download it again. Just copu following folder on your machine.

**Windows:** C:\\Users\\<YourName>\\.vagrant.d\\boxes\\laravel-VAGRANTSLASH-homestead

### Clone Homestead repository

```
git clone https://github.com/laravel/homestead.git Homestead
```

### SSH key or SSH login

We can create ssh key and configure it in Homestead.yml file or connect directly by `vagrant ssh` command. If we connect through vagrant ssh command, user id and password is `vagrant`.

## PHPMyAdmin

PHPMyAdmin is one of the most common tool used by developers, but not available in Homestead by default. However, we can install it as follow:

### Installing PHPMyAdmin

* SSH into Homestead vagrant box with vagrant ssh and type the following command:

```
sudo apt-get install phpmyadmin
```

* when prompted to select the Web server, select apache2 and press Enter, just to get pass it.
* when prompted to config database for phpmyadmin with dbconfig-common, select Yes and press Enter.
* when prompted for Password of the database's administrative user, enter secret and press Enter.
* when prompted for MySQL application password for phpmyadmin, enter `secret` and press Enter.
* when prompted for Password confirmation, enter secret again and press Enter.

### Create and config site for Nginx

```
sudo ln -s /usr/share/phpmyadmin/ /usr/share/nginx/html/phpmyadmin
serve phpmyadmin.app /usr/share/nginx/html/phpmyadmin
```

### Adding phpMyAdmin.app to hosts file

* Run Notepad as Administrator, then open navigate to C:\Windows\System32\drivers\etc.
* You may need to type *.* and press Enter in File name box to see it.
* Select file hosts and click Open button.
* Add phpmyadmin.app at the bottom of the file like so,

```
    127.0.0.1   phpmyadmin.app
```

* Save the file and close Notepad.
* Now open Web browser to navigate to http://phpmyadmin.app:8000 and you should now see phpMyAdmin login page.

### Creating new User

* Login to phpMyAdmin as root using password secret
* Goto tab Users and create a user for your app and set privileges as you see fit.

## Homeshed document

http://laravel.com/docs/homestead
