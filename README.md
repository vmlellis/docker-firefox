[![Docker Pulls](https://img.shields.io/docker/pulls/yongjhih/firefox.svg)](https://hub.docker.com/r/yongjhih/firefox/)
[![Docker Stars](https://img.shields.io/docker/stars/yongjhih/firefox.svg)](https://hub.docker.com/r/yongjhih/firefox/)
[![Docker Size](https://img.shields.io/imagelayers/image-size/yongjhih/firefox/latest.svg)](https://imagelayers.io/?images=yongjhih/firefox:latest)
[![Docker Layers](https://img.shields.io/imagelayers/layers/yongjhih/firefox/latest.svg)](https://imagelayers.io/?images=yongjhih/firefox:latest)

## Usage

```sh
docker run -it \
           -e UID=$(id -u) \
           -e GID=$(id -g) \
           -e DISPLAY=$DISPLAY \
           -v /tmp/.X11-unix:/tmp/.X11-unix \
           -v $XAUTHORITY:/home/ubuntu/.Xauthority \
           -e DISPLAY=$DISPLAY \
           -v /tmp/.X11-unix:/tmp/.X11-unix \
           -v $XAUTHORITY:/home/ubuntu/.Xauthority \
           --privileged \
           -v /dev/snd:/dev/snd \
           --net=host \
           yongjhih/firefox
```

or

```sh
$ curl -L https://github.com/yongjhih/docker-firefox/raw/master/firefox > ~/bin/firefox && chmod a+x ~/bin/firefox
$ ~/bin/firefox
```
