# Docker

## Installation

TODO: Write steps of installing docker.

## Quick commands

ducker run container-name

**Images**

Append `docker` in front below commands.

| Command             | Description                        |
|---------------------|------------------------------------|
| docker images       | Display images already downloaded  |
| docker rmi -f imgid | Remove docker image                |
| docker pull imgname | Download image                     |
| docker ps -a        | List all containers                |
| docker ps -a -q     | List image id of all containers    |

## Quick commands - Running interactive shell

```
docker run -i -t ubuntu /bin/bash
```

  - `-i` Start interactive shell
  - `-t` Create pseudo TTY that attaches stdin and stdout
  - `/bin/bash` will launch bash shell inside the container.

## Quick commands - Long running containers.

```bash
docker run -d ubuntu /bin/sh -c "while true; do echo hello world; sleep 1; done"
```

**Container commands**

| Command                     | Description       |
|-----------------------------|-------------------|
| docker stop container_id    | Stop container    |
| docker start container_id   | Start container   |
| docker restart container_id | Restart container |
| docker kill container_id    | Kill container    |
| docker rm container_id      | Remove container  |

Here container_id could be name as well. we can get name of running containers with command `docker ps`. Sample output is

```bash
docker ps
CONTAINER ID    IMAGE    COMMAND                  CREATED              STATUS              PORTS   NAMES
d68ede79d002    ubuntu   "/bin/sh -c 'while tr"   About a minute ago   Up About a minute           loving_mestorf
```

Output of command shows container id and name(last column) which can be used to access container in commands. It also show which image is used, what command is running, When it is created and current status along with ports.

**Operate on all containsers**

To operate (say remove) on all containers, we can pass `$(docker ps -a -q)` as container_id.

  - `ps` - list down all **running** containers
  - `-a` - List down all containers, regardless of state.
  - `-q` - returns only container id

Thus `ps -a -q` returns container id of all containers. `docker rm $(docker ps -a -q)` thus remove all containers.
