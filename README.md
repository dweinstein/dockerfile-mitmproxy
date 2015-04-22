# SYNOPSIS

mitmproxy dockerfile.

# USAGE

Public image on [registry](https://registry.hub.docker.com/u/dweinstein/mitmproxy/)

```bash
docker pull dweinstein/mitmproxy
docker run -p 8080:8080 dweinstein/mitmproxy mitmdump
https_proxy=http://dockerip:8080 curl -k https://www.google.com

```

![Example](/docs/dockerfile-mitmproxy.png?raw=true "dockerfile mitmproxy")
