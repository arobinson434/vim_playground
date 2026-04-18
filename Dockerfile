FROM almalinux:10.1

RUN dnf install -y git vim clang-devel wget

COPY test/ /root/test/
COPY vimrc /root/
COPY init_vim.sh /root/

RUN /root/init_vim.sh

ENV TERM xterm-256color

WORKDIR    /root/
ENTRYPOINT /bin/bash
