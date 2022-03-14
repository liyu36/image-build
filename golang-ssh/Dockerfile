FROM liy36/ubuntu:20.04
ENV GO_VERSION="image_tag"
RUN cd /usr/local/ && \
    wget -qO - https://golang.google.cn/dl/go${GO_VERSION}.linux-amd64.tar.gz |tar -xzf - && \
    apt update && apt install make automake gcc git  -y && \
    /usr/local/go/bin/go env -w GO111MODULE=on && \
    /usr/local/go/bin/go env -w GOPROXY=https://goproxy.cn,direct && \
    mkdir /root/go && \
    mkdir /root/golang /root/.ssh 

RUN apt install -y openssh-server dumb-init && mkdir /run/sshd
COPY ./bashrc /root/.bashrc
ENTRYPOINT ["/usr/bin/dumb-init", "--"]
CMD ["/usr/sbin/sshd", "-D"]
