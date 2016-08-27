# Docker Basics

Taken from https://docs.docker.com/engine/understanding-docker/

## What is docker?

Docker is an open platform for developing, shipping, and running applications. Docker is designed to deliver your applications faster. With Docker you can separate your applications from your infrastructure and treat your infrastructure like a managed application.

Docker is perfect for helping you with the development lifecycle. Docker allows your developers to develop on local containers that contain your applications and services. It can then integrate into a continuous integration and deployment workflow.

## Docker architecture

![Docker Architecture](https://docs.docker.com/engine/article-img/architecture.svg)

Docker consist of three major parts.

- Docker images
- Docker registries
- Docker containers

**Docker images** is read only template. For example ubuntu. In real world, consider it as ubuntu DVD, which can be used to install ubuntu on a physical system but can not be used as standalone. Thus in simple words, we can say, docker images are installers.

**Docker registry** holds images. We can consider them as original cd in IT department of an organization (registry). Whenever someone need a software, they request IT department and IT department provides a copy of CD (image).

**Docker container** is equivalent to installed program. The only major difference between installed program on an operating system and docker container is, unlike installed program, container can move to different systems.

As shown in image above, containers and images are part of docker host, which is installed on our system. On the other hand, registry is located on central repository/location, where anyone in public/private network can access them.
