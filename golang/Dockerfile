ENV GO_VERSION="image_tag"
RUN cd /usr/local/ && \
    wget -qO - https://golang.google.cn/dl/go${GO_VERSION}.linux-amd64.tar.gz |tar -xzf - && \
    ln -s /usr/local/go/bin/* /bin/ && \
    apt update && apt install make automake gcc git -y && \
    /usr/local/go/bin/go env -w GO111MODULE=on && \
    /usr/local/go/bin/go env -w GOPROXY=https://goproxy.cn,direct && \
    mkdir /root/go && \
    mkdir /root/golang /root/.ssh
COPY ./bashrc /root/.bashrc
CMD ["sleep", "999999999999"]
