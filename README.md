# SYNOPSIS

# USAGE

```bash
docker pull dweinstein/mitmproxy
docker run -p 8080:8080 dweinstein/mitmproxy mitmdump
https_proxy=http://dockerip:8080 curl -k https://www.google.com

```
