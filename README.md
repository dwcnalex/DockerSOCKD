# DockerSOCKD

Docker with SOCKS server (aka Dante) on board!

### Quick start

Firstly, let's install [Docker](https://www.docker.com/):

```bash
$ wget -q -O - "https://get.docker.com/" | sudo sh
```

Pull the [image](https://registry.hub.docker.com/u/ejzspb/sockd/) from Docker Hub:

```bash
$ sudo docker pull ejzspb/sockd
Pulling repository ejzspb/sockd
Status: Downloaded newer image for ejzspb/sockd:latest
```

Or you can build your own image:

```bash
$ sudo docker build --tag="sockd" 'github.com/Ejz/DockerSOCKD'
Successfully built 40f179bee5a9
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

### Tests

To run continuous integration test, please, execute:

```bash
$ git clone 'https://github.com/Ejz/DockerSOCKD'
$ cd DockerSOCKD
$ sudo ./test
latest: Pulling from ejzspb/sockd
a3cb35e859e7: Pull complete 
41702b730607: Pull complete
# ...
Deleted: 41702b7306076583ba7707df18ea7417e8d843682f4e5440a5279952c47fd8d8
Deleted: a3cb35e859e7edf9b07c6098f0b704ff59c5d4361245e468c0d551f50eae6f84
TEST - OK!
$ cd .. && rm -rf DockerSOCKD
```

### Contributing

I love to have your help to make this project better. So feel free to:

* open an [issue](https://github.com/Ejz/DockerSOCKD/issues), if you have any problem
* fork the project and submit [pull request](https://github.com/Ejz/DockerSOCKD/pulls)
* contact me via email address <ejz@ya.ru>
* comment [this post](http://ejz.ru/551/docker-with-socks-server) in my blog
* visit project's [Docker Hub page](https://registry.hub.docker.com/u/ejzspb/sockd/)
* star the project, if you like it
