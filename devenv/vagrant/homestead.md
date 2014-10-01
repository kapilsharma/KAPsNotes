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

**Windows:** C:\Users\<YourName>\.vagrant.d\boxes\laravel-VAGRANTSLASH-homestead
