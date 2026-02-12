FROM python:3.13.1-bookworm

RUN apt-get update -y
RUN apt-get install pandoc wget -y 

COPY ./install_texlive.sh /tmp/install_texlive.sh

RUN chmod +x /tmp/install_texlive.sh

RUN /tmp/install_texlive.sh

# create a symlink to the lualatex-dev binary
RUN ln -s /usr/local/texlive/2024/bin/x86_64-linux/lualatex-dev /usr/local/lualatex
