#!/usr/bin/env sh
# set -eu
export PYTHONUNBUFFERED=1
apk update
apk add build-base mpc1-dev openssl-dev libffi-dev
apk --update --upgrade add gcc musl-dev jpeg-dev zlib-dev libffi-dev cairo-dev pango-dev gdk-pixbuf-dev
apk add --update --no-cache curl python3 python3-dev && ln -sf python3 /usr/bin/python
python3 -m ensurepip
pip3 install --no-cache --upgrade pip setuptools
pip3 install docker-compose
docker-compose -v
