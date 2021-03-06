[![Docker Pulls](https://img.shields.io/docker/pulls/yongjhih/firefox.svg)](https://hub.docker.com/r/yongjhih/firefox/)
[![Docker Stars](https://img.shields.io/docker/stars/yongjhih/firefox.svg)](https://hub.docker.com/r/yongjhih/firefox/)
[![Docker Size](https://img.shields.io/imagelayers/image-size/yongjhih/firefox/latest.svg)](https://imagelayers.io/?images=yongjhih/firefox:latest)
[![Docker Layers](https://img.shields.io/imagelayers/layers/yongjhih/firefox/latest.svg)](https://imagelayers.io/?images=yongjhih/firefox:latest)
[![Travis CI](https://img.shields.io/travis/yongjhih/docker-firefox.svg)](https://travis-ci.org/yongjhih/docker-firefox)

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
           yongjhih/firefox
```

or

```sh
$ curl -L https://github.com/yongjhih/docker-firefox/raw/master/firefox > ~/bin/firefox && chmod a+x ~/bin/firefox
$ ~/bin/firefox
```

Private mode:

```sh
$ HOME= ~/bin/firefox
```
