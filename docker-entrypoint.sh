#!/usr/bin/env bash

UID=${UID:-1000}
GID=${GID:-1000}

usermod -u $UID -g $GID $USER > /dev/null
groupmod -g $GID $USER > /dev/null

cd "/home/$USER"

exec sudo -u $USER "$@"
exec "$@"
