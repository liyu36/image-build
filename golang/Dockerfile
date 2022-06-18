ENV GO_VERSION="image_tag"
RUN cd /usr/local/ && \
    wget -qO - https://golang.google.cn/dl/go${GO_VERSION}.linux-amd64.tar.gz |tar -xzf -

ENV GOROOT="/usr/local/go/"
ENV GO111MODULE="on"
ENV GOPATH="/root/go"
ENV GOBIN="${GOPATH}/bin"
ENV CGO_ENABLED="0"
ENV GOPROXY="https://goproxy.cn,direct"

RUN ln -s /usr/local/go/bin/* /usr/bin/ && apt update && apt install make automake gcc git -y && \
    mkdir /root/go && \
    mkdir /root/golang /root/.ssh

COPY ./bashrc /root/.bashrc
CMD ["sleep", "999999999999"]
