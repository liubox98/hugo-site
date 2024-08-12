# 使用 Hugo 的官方 Docker 镜像
FROM klakegg/hugo:0.131.0

# 设置工作目录
WORKDIR /src

# 将本地文件复制到 Docker 容器中
COPY . /src

# 构建 Hugo 网站
RUN hugo

# 配置容器的默认命令
CMD ["hugo", "server", "--bind", "0.0.0.0"]
