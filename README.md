# jmzx.uk

> Placeholder homepage. One static HTML file, with no build step and no JS.

**Live**: <https://jmzx.uk>

The monochrome member of a three-site family that shares one layout and a 2x2 tile favicon, with a palette per site:

| site | palette | repo |
|---|---|---|
| jmzx.uk | monochrome greys | `xjmzx/jmzx.uk` |
| [fizx.uk](https://fizx.uk) | cool blue-green | `adjmx/fizx.uk` |
| [upleb.uk](https://upleb.uk) | warm ambers | `macos-node/upleb.uk` |

- `site/`: the webroot (`index.html`, `favicon.svg`)
- `nginx-jmzx.uk.conf`: the vhost as first written (certbot has since added the 443 block and the HTTP→HTTPS redirect on the server)
- `deploy.sh`: rsyncs `site/` → `jmzx.uk:/var/www/jmzx.uk/` (ssh alias: root @ 103.141.13.110, port 2121)

Server: Debian 12, 1 vCPU, ~925 MB RAM, 12 GB disk. nginx 1.22 serves it; the Let's Encrypt cert is renewed by `certbot.timer` (nginx plugin).
