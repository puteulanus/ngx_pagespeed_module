FROM centos:centos7

ENV NGX_VERS=latest
VOLUME /mnt/modules

RUN yum install -y gcc-c++ pcre-devel zlib-devel unzip wget libuuid-devel

CMD bash <(curl -f -L -sS https://ngxpagespeed.com/install) \
    -y -m -a '--with-compat' --nginx-version $NGX_VERS && \
    cp /root/nginx-*/objs/ngx_pagespeed.so /mnt/modules/
