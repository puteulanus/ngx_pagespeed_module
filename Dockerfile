FROM centos:centos7

ENV NGX_VER=latest
VOLUME /mnt/modules

RUN yum install -y gcc-c++ pcre-devel zlib-devel unzip wget libuuid-devel make sudo

CMD curl -SOLs https://raw.githubusercontent.com/pagespeed/ngx_pagespeed/master/scripts/build_ngx_pagespeed.sh && \
    bash build_ngx_pagespeed.sh -y -m -a '--with-compat' --nginx-version $NGX_VERS && \
    cp /root/nginx-*/objs/ngx_pagespeed.so /mnt/modules/
