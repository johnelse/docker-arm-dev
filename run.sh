#!/bin/bash

docker run -it --rm \
    --platform linux/arm64/v8 \
    -v ~/.ssh:/home/dev/.ssh \
    -v "${PWD}":/external:ro \
    ${USER}/arm-dev \
    /bin/bash
