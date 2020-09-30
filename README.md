# Coiled Docker Images

[![Build and deploy](https://github.com/coiled/coiled-docker/workflows/Build%20and%20deploy/badge.svg)](https://github.com/coiled/coiled-docker/actions?query=workflow%3A%22Build+and+deploy%22)

This repository contains the source files for [Coiled Docker images](https://hub.docker.com/u/coiled).

## Images

| Image Name  | Dockerfile | Docker Hub | Description | 
| ----------- | :-----------: | :-----------: | --------------- | 
| `default`  | [`Dockerfile`](default/Dockerfile)  | [Docker Hub][default dockerhub] | Default image used for Coiled software environments. |
| `notebook` | [`Dockerfile`](notebook/Dockerfile) | [Docker Hub][notebook dockerhub] | Default image used for Coiled example notebooks. Installs several JupyterLab extensions. |


[default dockerhub]: https://hub.docker.com/r/coiled/default
[notebook dockerhub]: https://hub.docker.com/r/coiled/notebook