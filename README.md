<h1 align="center">NeteaseMusicWeb-Docker</h1>

<div align="center">

基于[NeteaseCloudMusicApi](https://github.com/Binaryify/NeteaseCloudMusicApi)和[Vue-NeteaseCloud-WebMusicApp](https://github.com/fudaosheng/Vue-NeteaseCloud-WebMusicApp)建立开箱即用的**Docker镜像**

[![HomePage][HomePage-image]][HomePage-url]
[![Github][Github-image]][Github-url]
[![license][github-license-image]][github-license-url]
[![Build Image][workflow-image]][workflow-url]
[![last commit][last-commit-image]][last-commit-url]
[![docker version][docker-version-image]][docker-version-url]
[![docker pulls][docker-pulls-image]][docker-pulls-url]
[![docker stars][docker-stars-image]][docker-stars-url]
[![docker image size][docker-image-size-image]][docker-image-size-url]
![repo size][repo-size-image]

[HomePage-image]: https://img.shields.io/badge/HomePage-NeteaseMusicWeb-brightgreen
[HomePage-url]: https://163.a76yyyy.cn
[Github-image]: https://img.shields.io/static/v1?label=Github&message=NeteaseMusicWeb&color=brightgreen
[Github-url]: https://github.com/a76yyyy/NeteaseMusicWeb-Docker
[github-license-image]: https://img.shields.io/github/license/a76yyyy/NeteaseMusicWeb-Docker
[github-license-url]: https://github.com/a76yyyy/NeteaseMusicWeb-Docker/blob/master/LICENSE
[last-commit-image]: https://img.shields.io/github/last-commit/a76yyyy/NeteaseMusicWeb-Docker
[last-commit-url]: https://github.com/a76yyyy/NeteaseMusicWeb-Docker/
[commit-activity-image]: https://img.shields.io/github/commit-activity/m/a76yyyy/NeteaseMusicWeb-Docker
[commit-activity-url]: https://github.com/a76yyyy/NeteaseMusicWeb-Docker/
[docker-version-image]: https://img.shields.io/docker/v/a76yyyy/netease_music_web?style=flat
[docker-version-url]: https://hub.docker.com/r/a76yyyy/netease_music_web/tags?page=1&ordering=last_updated
[docker-pulls-image]: https://img.shields.io/docker/pulls/a76yyyy/netease_music_web?style=flat
[docker-pulls-url]: https://hub.docker.com/r/a76yyyy/netease_music_web
[docker-stars-image]: https://img.shields.io/docker/stars/a76yyyy/netease_music_web?style=flat
[docker-stars-url]: https://hub.docker.com/r/a76yyyy/netease_music_web
[docker-image-size-image]: https://img.shields.io/docker/image-size/a76yyyy/netease_music_web?style=flat
[docker-image-size-url]: https://hub.docker.com/r/a76yyyy/netease_music_web
[repo-size-image]: https://img.shields.io/github/repo-size/a76yyyy/NeteaseMusicWeb-Docker
[workflow-image]: https://github.com/a76yyyy/NeteaseMusicWeb-Docker/actions/workflows/Build%20Image.yml/badge.svg
[workflow-url]: https://github.com/a76yyyy/NeteaseMusicWeb-Docker/actions/workflows/Build%20Image.yml

</div>

Docker容器部署方式
==========

1. **Docker地址** : [https://hub.docker.com/r/a76yyyy/netease_music_web](https://hub.docker.com/r/a76yyyy/netease_music_web)

2. **Docker Compose部署方式**

   ``` bash
   # 创建并切换至 netease 目录
   mkdir -p $(pwd)/netease && cd $(pwd)/netease
   # 下载 docker-compose.yml
   wget https://cdn.jsdelivr.net/gh/a76yyyy/NeteaseMusicWeb-Docker@main/docker-compose.yml
   wget https://cdn.jsdelivr.net/gh/a76yyyy/NeteaseMusicWeb-Docker@main/Dockerfile
   # 根据需求和配置描述修改配置环境变量
   vi ./docker-compose.yml
   # 执行 Docker Compose 命令
   docker-compose up -d --build
   ```
   > DockerHub仓库的镜像所需后端API地址为 http://localhost:3000 ; 

   > 如果没有搭建后端镜像或者API地址不为上述地址，请使用 `docker-compose` 方式**修改配置后部署**, 
   > 
   > **请勿使用 `docker pull a76yyyy/netease_music_web` 方式直接拉取镜像**