# 使用 arm32v7/alpine 作为基础镜像
FROM arm32v7/alpine:latest

# 作者信息
LABEL maintainer="yourname"

# 安装必要的软件包
RUN apk --no-cache add \
    bash \
    curl \
    # 添加其他你需要的软件包...

# 设置工作目录
WORKDIR /app

# 将本地文件复制到镜像中
COPY . .

# 定义容器启动时执行的命令
CMD ["bash"]
