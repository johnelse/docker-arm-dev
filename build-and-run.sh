#!/bin/bash

PLATFORM=linux/arm64/v8

docker build --platform $PLATFORM -t ${USER}/arm-dev .

docker run -it --rm \
    --platform $PLATFORM \
    -v ~/.ssh:/home/dev/.ssh \
    -v "${PWD}":/external:ro \
    ${USER}/arm-dev \
    /bin/bash
