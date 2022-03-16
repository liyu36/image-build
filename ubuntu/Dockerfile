FROM ubuntu:20.04
ENV TZ="Asia/Shanghai"
RUN apt update && apt install -y vim curl wget iproute2 zip unzip bash-completion language-pack-zh-hans
RUN ln -s /usr/share/zoneinfo/${TZ} /etc/localtime && echo $TZ > /etc/timezone
COPY sources.list /etc/apt/sources.list
ENV LANG="zh_CN.UTF8"
