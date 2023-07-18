#!/bin/bash

docker run -it --rm -v \
    ~/.ssh:/home/dev/.ssh \
    ${USER}/arm-dev \
    /bin/bash
