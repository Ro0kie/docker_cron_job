FROM ubuntu:latest

WORKDIR /app

COPY crontab /etc/cron.d/crontab
COPY script.sh .

RUN sed -i "s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g" /etc/apt/sources.list\
    && sed -i "s@/security.ubuntu.com/@/mirrors.aliyun.com/@g" /etc/apt/sources.list\
    && apt update\
    && apt install -y cron\
    && chmod +x ./script.sh

CMD cron && tail -f /etc/hostname