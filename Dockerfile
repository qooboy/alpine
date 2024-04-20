FROM scratch
ADD alpine-minirootfs-3.19.1-armv7.tar.gz /
CMD ["/bin/sh"]

# 在容器启动时加载 tun 模块
CMD modprobe tun
