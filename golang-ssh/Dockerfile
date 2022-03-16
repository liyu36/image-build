ENV GO_VERSION="image_tag"
RUN cd /usr/local/ && \
    wget -qO - https://golang.google.cn/dl/go${GO_VERSION}.linux-amd64.tar.gz |tar -xzf - && \
    apt update && apt install make automake gcc git  -y && \
    /usr/local/go/bin/go env -w GO111MODULE=on && \
    /usr/local/go/bin/go env -w GOPROXY=https://goproxy.cn,direct && \
    mkdir /root/go && \
    mkdir /root/golang /root/.ssh 

RUN apt install -y openssh-server dumb-init && mkdir /run/sshd && echo 'ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAxWbnryLffvqni3emokxNJ93mJizubSN0vUxWQJrVdYqBYOIGcvcdtYEz1c19F3HX5Zw3drNnIbU0rZU4bK6o/552sot7XPfARgXNgi1eStzXJnHrunWUkf8O7gFq6zx62oYFoCR5u1eeZ1FDBdtoQEwEoy++kdgR98oXzsLuItdL415kAxaRdb+W8ZP5WlBZuG+7h2mEWF3QVjjPwf4nSJJqY2+KKwQy1A2SoQA31/gyRqP71TE6iSuzLpwmM68Ixj1lk2SCtCCqssYbE9T3h/9gFfbWsaFpUPB2F2pQJ9mtoTc+Mz5GlV2PQlRCiBhd7wjAUWHWdgsx4nsrYoVBAQ==' > /root/.ssh/authorized_keys && echo "export \$(cat /proc/1/environ |tr '\0' '\n' | xargs)" >> /etc/profile
COPY ./bashrc /root/.bashrc 
EXPOSE 22
EXPOSE 80
ENTRYPOINT ["/usr/bin/dumb-init", "--"]
CMD ["/usr/sbin/sshd", "-D"]
