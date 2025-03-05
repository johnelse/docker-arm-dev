FROM    ubuntu:24.04
LABEL   org.opencontainers.image.authors="john.else@gmail.com"

RUN     apt-get update

# Languages
RUN     apt-get install -y g++ gcc

# Build tools
RUN     apt-get install -y cmake make ninja-build pkg-config

# Libraries
RUN     apt-get install -y \
            libfreetype-dev \
            libgtkmm-3.0-dev \
            libpango1.0-dev \
            libsqlite3-dev \
            libx11-dev \
            libxcb-cursor-dev \
            libxcb-xkb-dev \
            libxcb-keysyms1-dev \
            libxcb-util-dev \
            libxkbcommon-dev \
            libxkbcommon-x11-dev

# Other utilities
RUN     apt-get install -y gdb git tmux vim wget

RUN     useradd dev
RUN     mkdir -p /home/dev
RUN     chown dev /home/dev
WORKDIR /home/dev

USER    dev
CMD     ["/bin/bash"]
