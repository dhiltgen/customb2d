#!/bin/bash

set -e

# Download a specific version you want to play with
wget -O docker https://test.docker.com/builds/Linux/x86_64/docker-1.10.0-rc2

# Or you can use a local binary with something like this
#cp ~/bin/docker-1.9.1 ./docker

# Or perhaps a build from a local engine tree to pick up master or your own dev
#cp ../docker/bundles/latest/binary/docker .

docker build -t customb2d .
docker run --rm customb2d > boot2docker.iso

# Copy to the places where machine and friends looks
cp boot2docker.iso ~/.docker/machine/cache/boot2docker.iso
cp boot2docker.iso ~/.docker/images/boot2docker.iso
