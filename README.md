# customb2d
Customized boot2docker ISO build

This little set of hacks lets you quickly build your own custom
boot2docker.iso and inject a specific docker binary, workaround init
scripts, and such.  This can be useful for `docker-machine` drivers that
rely on boot2docker.

You should edit the build.sh script to adjust based on your environment

Usage:

```
./build.sh
```
