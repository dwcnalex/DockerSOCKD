# DockerProxyServer

Docker container with proxy server (Dante aka SOCKD) on board!

### Quick start

Firstly, let's install [Docker](https://www.docker.com/):

```bash
$ wget -q -O - "https://get.docker.com/" | sh
```

Build your own image:

```bash
$ sudo docker build --tag="ejzspb/sockd" 'github.com/Ejz/SOCKD'
Successfully built 40f179bee5a9
```

Start container and connect to it:

```bash
$ sudo docker run -d -p 127.0.0.1:222:22 ejzspb/sshd
05ec35688cd4cc89c514dd5f07d978c25ba7a8b04b32d08bf648bd4dbc1fa7d7
$ ssh -p 222 root@127.0.0.1
# Enter "root" as password
```

Good luck!
