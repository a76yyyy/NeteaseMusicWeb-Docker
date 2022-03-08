# 基础镜像
FROM node:lts-alpine

# 维护者信息
LABEL maintainer "a76yyyy <q981331502@163.com>"
LABEL org.opencontainers.image.source=https://github.com/a76yyyy/NeteaseMusicWeb-Docker

WORKDIR /app/dist

ARG BACKSCHEME=http
ARG BACKPORT=3000
ARG BACKURL=localhost:3000
ENV GHPROXY=
ENV FRONTPORT=6688

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories \
    && apk add --update --no-cache git \
    && git clone --depth 1 ${GHPROXY}https://github.com/Binaryify/NeteaseCloudMusicApi /app/backend \
    && cd /app/backend \
    && npm config set registry "https://registry.npmmirror.com/" \
    && npm install -g npm husky pm2 cnpm http-server\
    && npm install --production \
    && npm cache clean --force \
    && git clone --depth 1 ${GHPROXY}https://github.com/fudaosheng/Vue-NeteaseCloud-WebMusicApp /app/frontend \
    && cd /app/frontend \
    && sed -i "s/http:\/\/localhost:3000/${BACKSCHEME}:\/\/${BACKURL}/g" src/network/request.js \
    && cnpm install \
    && npm run build \
    && cp -rf ./dist/* /app/dist \
    && cd /app/dist \
    && rm -rf /app/frontend \
    && apk del git \
    && npm cache clean --force \
    && rm -rf /var/cache/apk/* \
    && rm -rf /usr/share/man/*

EXPOSE ${BACKPORT} ${FRONTPORT}

CMD ["sh","-c","pm2 start /app/backend/app.js --name backend && http-server -g -b -p ${FRONTPORT} -d False"]
