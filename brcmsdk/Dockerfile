FROM centos:6

LABEL maintainer="Yanan Gao <abutter.gao@gmail.com>"
LABEL description="Broadcom SDK"
LABEL version="1.0"


VOLUME /workdir
WORKDIR /workdir


RUN yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-6.noarch.rpm   && \
    yum -y update                                                                           && \
    yum -y upgrade                                                                          && \
    yum -y install gcc                                                                         \
                   glibc.i686                                                                  \
                   libmpc.i686                                                                 \
                   libzip.i686                                                                 \
                   perl                                                                        \
                   libacl-devel                                                                \
                   zlib-devel                                                                  \
                   libuuid-devel                                                               \
                                                                                            && \
    yum clean all


RUN pushd /usr/lib                          && \
    ln -sf libmpc.so.2.0.0 libmpc.so.3      && \
    ln -sf libmpfr.so.1.2.0 libmpfr.so.4    && \
    ln -sf libgmp.so.3.5.0 libgmp.so.10     && \
    popd


ENTRYPOINT ["/bin/bash"]
