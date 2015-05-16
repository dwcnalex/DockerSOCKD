# DockerSOCKD

Docker container with proxy server (Dante aka SOCKD) on board!

### Quick start

Firstly, let's install [Docker](https://www.docker.com/):

```bash
$ wget -q -O - "https://get.docker.com/" | sudo sh
```

Build your own image:

```bash
$ sudo docker build --tag="sockd" 'github.com/Ejz/SOCKD'
Successfully built 40f179bee5a9
```

Or you can easily pull image from Docker Hub:

```bash
$ sudo docker pull ejzspb/sockd
Pulling repository ejzspb/sockd
Status: Downloaded newer image for ejzspb/sockd:latest
```

Run container based on this image:

```bash
$ sudo docker run -d -p 127.0.0.1:1080:1080 ejzspb/sockd
d80c9e34575eb16fb1b34d6173a2a7f1837735b2f4e7580ac4e9cd8986c38a3c
```

Test it:

```bash
$ curl --proxy-user sockd:sockd --socks5 127.0.0.1:1080 'http://check-host.net/ip'
10.0.0.1
```

Good luck!
