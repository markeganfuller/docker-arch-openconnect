# Docker Archlinux OpenConnect

[![Dockerhub Build](https://img.shields.io/docker/cloud/build/mefdock/docker-arch-openconnect)](https://cloud.docker.com/repository/docker/mefdock/docker-arch-openconnect)

Docker container using Archlinux and providing
[OpenConnect](https://www.infradead.org/openconnect/)

This container is meant to connect to a VPN without affecting the hosts
networking and provide the VPN connection to other containers e.g. via
docker-compose `network_mode: service:openconnect`

## Usage

Configuring a VPN requires `NET_ADMIN` capabilities therefore the container
must be run with:

```
--cap_add NET_ADMIN
```
