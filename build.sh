#!/bin/bash

set -e


# For 1.11 or greater, there are multiple binaries,
# https://get.docker.com/builds/Linux/x86_64/docker-1.11.1.tgz

# Download a specific version you want to play with
#wget -O docker https://test.docker.com/builds/Linux/x86_64/docker-1.10.0-rc4
# wget -O docker https://s3.amazonaws.com/packages.docker.com-staging/1.10/builds/linux/amd64/docker-1.10.3-cs3
#wget -O docker https://test.docker.com/builds/Linux/x86_64/docker-1.10.2

# Or you can use a local binaries with something like this
#cp ~/bin/1.11/* ./
cp ~/bin/1.11.1/* ./

# Or perhaps a build from a local engine tree to pick up master or your own dev
#cp ../docker/bundles/latest/binary/docker .

docker build -t customb2d .
docker run --rm customb2d > boot2docker.iso

# Copy to the places where machine and friends looks
cp boot2docker.iso ~/.docker/machine/cache/boot2docker.iso
cp boot2docker.iso ~/.docker/images/boot2docker.iso
