# ngx_pagespeed_module
Build ngx_pagespeed for Nginx Plus

```bash
docker run --rm -e "NGX_VER=$(nginx -v 2>&1 | grep -Po '(?<=nginx/)[\d\.]+')" \
  -v /etc/nginx/modules:/mnt/modules puteulanus/ngx_pagespeed_module
```
