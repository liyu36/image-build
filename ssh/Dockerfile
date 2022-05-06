RUN apt update && \
    mkdir /root/.ssh 

RUN apt install -y openssh-server dumb-init && mkdir /run/sshd && echo 'ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAxWbnryLffvqni3emokxNJ93mJizubSN0vUxWQJrVdYqBYOIGcvcdtYEz1c19F3HX5Zw3drNnIbU0rZU4bK6o/552sot7XPfARgXNgi1eStzXJnHrunWUkf8O7gFq6zx62oYFoCR5u1eeZ1FDBdtoQEwEoy++kdgR98oXzsLuItdL415kAxaRdb+W8ZP5WlBZuG+7h2mEWF3QVjjPwf4nSJJqY2+KKwQy1A2SoQA31/gyRqP71TE6iSuzLpwmM68Ixj1lk2SCtCCqssYbE9T3h/9gFfbWsaFpUPB2F2pQJ9mtoTc+Mz5GlV2PQlRCiBhd7wjAUWHWdgsx4nsrYoVBAQ==' > /root/.ssh/authorized_keys && echo ZXhwb3J0ICQoY2F0IC9wcm9jLzEvZW52aXJvbiB8dHIgJ1wwJyAnXG4nIHwgeGFyZ3Mp |base64 -d >> /etc/profile
EXPOSE 22
ENTRYPOINT ["/usr/bin/dumb-init", "--"]
CMD ["/usr/sbin/sshd", "-D"]
