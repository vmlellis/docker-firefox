## Usage

```sh
docker run -it \
           -e DISPLAY=$DISPLAY \
           -v /tmp/.X11-unix:/tmp/.X11-unix \
           -v $XAUTHORITY:/home/ubuntu/.Xauthority \
           --net=host \
           yongjhih/firefox
```

```sh
$ curl -L https://github.com/yongjhih/docker-firefox/raw/master/firefox > ~/bin/firefox && chmod a+x ~/bin/firefox
$ ~/bin/firefox
```
