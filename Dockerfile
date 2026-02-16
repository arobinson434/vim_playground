FROM almalinux:10.1

RUN dnf install -y git vim clang-devel

RUN mkdir -p ~/.vim/pack/git-plugins/start
RUN git clone --depth 1 https://github.com/dense-analysis/ale.git ~/.vim/pack/git-plugins/start/ale
RUN vim -u NONE -c "helptags /root/.vim/pack/git-plugins/start/ale/doc" -c q

COPY vimrc /root/.vim/vimrc
COPY test/ /root/test/

ENV TERM xterm-256color

WORKDIR    /root/
ENTRYPOINT /bin/bash
