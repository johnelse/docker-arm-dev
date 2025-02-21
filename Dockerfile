FROM    ubuntu:24.04
LABEL   org.opencontainers.image.authors="john.else@gmail.com"

RUN     apt-get update
# Languages
RUN     apt-get install -y g++ gcc
# Build tools
RUN     apt-get install -y cmake make ninja-build
# Other utilities
RUN     apt-get install -y gdb git tmux vim

RUN     useradd dev
RUN     mkdir -p /home/dev
RUN     chown dev /home/dev
WORKDIR /home/dev

USER    dev
CMD     ["/bin/bash"]
