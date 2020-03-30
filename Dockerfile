FROM buildpack-deps:bionic

ARG LANVERSION
ENV LANSERVICE = "mi.nightc.com:11451"

RUN sed -i 's/archive.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list && sed -i 's/security.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list

RUN apt update
RUN apt install -y libpcap0.8-dev
RUN wget -O /usr/bin/lan-play-linux  https://github.com/spacemeowx2/switch-lan-play/releases/download/v$LANVERSION/lan-play-linux && chmod +x /usr/bin/lan-play-linux
ENTRYPOINT ["lan-play-linux"]