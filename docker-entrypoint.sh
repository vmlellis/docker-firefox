#!/usr/bin/env

UID=${UID:-1000}
GID=${GID:-1000}

usermod -u $UID $USER
groupmod -g $GID $USER

exec sudo -u $USER "$@"
