docker-arm-dev
--------------

ARM development environment for non-ARM platforms.

First install some packages:

```
sudo apt install binfmt-support qemu-user-static
```

Then use the `qemu-user-static` docker image to register qemu as a handler for
the binary formats for the various architectures supported by qemu:

```
docker run --rm --privileged multiarch/qemu-user-static --reset -p yes
```

You can now run multi-platform docker images with a platform other than your
current native architecture! e.g.

```
$ docker run -it --rm --platform linux/arm64/v8 ubuntu uname -m
aarch64
```

Some useful links:

* https://github.com/multiarch/qemu-user-static
* https://www.stereolabs.com/docs/docker/building-arm-container-on-x86/
