# Laravel container

These notes are about setting Docker development environment for Laravel. It is divided on following parts:

- [ ] Docker installation and common terms.
- [x] Installing apache container.
  - [x] Setup Laravel project.
- [ ] Create MySQL container.
  - [ ] Running Apache and MySQL container.
  - [ ] Laravel migration.
  - [ ] Link MySQL with Apache container.

## Docker installation and common terms

Docker installation is given in details in [installation guide](installation.md).

There is no thing special in installation for Laravel container.

## Installing apache container

Before going ahead, if you don't already knows Docker, I would recommend to go through following quick guides first

- [Installation](installation.md)
- [Quick start](QuickStart.md)
- [Basic docker terms and definition](terms.md)

After reading above three quick guides, I'm assuming you have basic idea of Docker machine, containers and images.

Here we are going to create docker container for one project, say `PHPRebootCom`.

> I created these notes while learning docker. At that time, I intended to use it for phpreboot.com project.

### Docker machine

I'm using my Mac book air. If you are on Mac or windows, you need docker machine. However installing docker install `default` docker machine. I don't really need project specific docker machine so I'd be using `default` machine.

However if you have unique and complex project or need docker for production (obviously in future, hope you are not learning on production), you may wish to create different docker machine. In that case, machine can be created with following command:

```bash
docker-machine create --driver virtualbox phpreboot
```

This command will take some time and create new docker machine named `phpreboot`. Please note we used `virtual box` as driver. We can also select other drivers like VMware or any cloud (for production) like AWS, Azure etc. You can find a list of avialable drivers [here](https://docs.docker.com/machine/drivers/)

We can find details of docker machine with command `docker-machine env phpreboot`.

When we use docker run command to run containers, they will be executed on one of these docker machine. We can select which docker machine will be used by command `eval "$(docker-machine env phpreboot)"`. Replace `phpreboot` with `dev` to switch back to dev machine.

### Docker containers & images.

As name suggest, containers contains images. Thus for simplicity, we can assume docker machine is OS and containers are installed programs. To install them, we need installer and these installers are docker images.

Thus to install apache, we need apache image. Although we can easily create our own image, lets start with pre-build image by someone else. To start off, lets select `nimmis/apache-php5` image.

We first need to download the image and then run it.

```bash
# download image
docker pull nimmis/apache-php5

# Start image (create container)
# Don't run this command immediately, first read.
docker run -tid nimmis/apache-php5
```

First command will simply download the image (if it is not already downloaded so its one time operation). It might take some time depending upon internet speed as it is around 450 mb image.

Second command start the container using downloaded image. We also used three flags in the command.

| flag | meaning                                       |
|------|-----------------------------------------------|
| t    | Allocate a TTY to interact with the container |
| i    | Use interactive STDIN/OUT                     |
| d    | Run in background                             |

With docker run command, we also need to use `-p <host post>:<container port>` or `-p 80:80` as we wish to use port 80. Also, we need to use `-v <local folder>:<container folder>` to replicate local folder in containerthus we also need to add `-v <local laravel folder>:/var/www`. We can also have multiple -v option for multiple shared folders. Thus our command to start container will be:

```bash
docker run -tid -p 80:80 -v /Users/kapil/dev/github/phpreboot/phpreboot.com:/var/www nimmis/apache-php5
```

As a last step, we need to configure /var/www/public folder in container.

First get container id with command `docker ps`. Then use command `docker exec -it <container_id> bash` to login to container. In container, open file `/etc/apache2/sites-enabled/000-default.conf` and update document root from `/var/www/html` to `/var/www/public`. Once done, restart apache with command `/etc/init.d/apache2 restart`.

We are done with laravel setup. To confirm, open url `http://192.168.99.100/` in your browser, and you can see default laravel page.

## Create MySQL container

Now we have apache container running with apache, which is running laravel project. However any web application is useless without database. To setup database, we first need to start database (MySQL) container.

As first step, lets pull official MySQL image.

```bash
docker pull mysql
docker run -p 3306:3306 --name mysqlserver -e MYSQL_ROOT_PASSWORD=root -d mysql
```
