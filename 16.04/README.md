[![Docker Pulls](https://img.shields.io/docker/pulls/yongjhih/firefox.svg)](https://hub.docker.com/r/yongjhih/firefox/)
[![Docker Stars](https://img.shields.io/docker/stars/yongjhih/firefox.svg)](https://hub.docker.com/r/yongjhih/firefox/)
[![Docker Size](https://img.shields.io/imagelayers/image-size/yongjhih/firefox/16.04.svg)](https://imagelayers.io/?images=yongjhih/firefox:16.04)
[![Docker Layers](https://img.shields.io/imagelayers/layers/yongjhih/firefox/16.04.svg)](https://imagelayers.io/?images=yongjhih/firefox:16.04)

## Usage

```sh
docker run -it \
           -v /tmp/.X11-unix \
           -e UID=$(id -u) \
           -e GID=$(id -g) \
           -e DISPLAY=$DISPLAY \
           -v $XAUTHORITY:/home/ubuntu/.Xauthority \
           -v $HOME/.mozilla:/home/ubuntu/.mozilla \
           --net=host \
           --privileged \
           yongjhih/firefox:16.04
```

or

```sh
$ curl -L https://github.com/yongjhih/docker-firefox/raw/master/16.04/firefox > ~/bin/firefox && chmod a+x ~/bin/firefox-16.04
$ ~/bin/firefox-16.04
```

Private mode:

```sh
$ HOME= ~/bin/firefox-16.04
```
