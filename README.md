# reading-libevent-2.1.12

```shell
wget https://github.com/libevent/libevent/archive/refs/tags/release-2.1.12-stable.tar.gz
```

## compile

```shell
# prepare
$ tar xf release-2.1.12-stable.tar.gz -C /root/

# compile
$ cd /root/libevent-release-2.1.12-stable
$ mkdir build && cd build
$ cmake ..
$ make -j4
$ make install

# load library
$ echo "export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib" >> /etc/profile
$ source /etc/profile
```

## refer

- *[libevent 深入浅出](https://www.bookstack.cn/books/libevent)*
- *[libevent manual](http://www.wangafu.net/~nickm/libevent-book/)*
- *[从网络 IO 说起](https://panzhongxian.cn/cn/2020/06/libevent-note-01/)*