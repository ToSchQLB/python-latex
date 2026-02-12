FROM python:3.13.1-bookworm

RUN apt-get update -y
RUN apt-get install pandoc wget -y 

RUN git clone https://gitlab.opencode.de/open-code/document-writing-tools/document-writing-ci-components.git /app

RUN chmod +x /app/scripts/install_texlive.sh

RUN /app/scripts/install_texlive.sh

RUN ln -s /usr/local/texlive/2025/bin/x86_64-linux/lualatex-dev /usr/local/lualatex
