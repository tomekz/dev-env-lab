FROM --platform=linux/amd64 ubuntu:latest

RUN apt-get update && apt-get install -y \
    zsh \
    git \
    curl \
    stow \
    fzf 


# Dokcer based images doesn't ship with locales. We need to install them manually
RUN apt-get update && apt-get install -y language-pack-en \
    && update-locale LANG=en_US.UTF-8 

WORKDIR /root
