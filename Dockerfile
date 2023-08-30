FROM ubuntu
WORKDIR /code

# 替换镜像源
RUN sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list \
    && sed -i s@/security.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list \
    && apt-get clean && apt-get update -y

# libevent 库 & 常用工具
RUN apt-get install -y \
    libssl-dev         \
	gcc make cmake vim

# docker build -t libevent-env .