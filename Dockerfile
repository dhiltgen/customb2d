# custom boot2docker build for local binaries

FROM boot2docker/boot2docker
ADD docker* /rootfs/usr/local/
RUN mv /rootfs/usr/local/docker/* /rootfs/usr/local/bin/ && \
    rmdir /rootfs/usr/local/docker && \
    chmod a+x /rootfs/usr/local/bin/docker*

# Uncomment if you have any automount workarounds you want to inject
#ADD automount /rootfs/etc/rc.d/automount
#RUN chmod a+x /rootfs/etc/rc.d/automount

RUN /make_iso.sh
CMD ["cat", "boot2docker.iso"]
