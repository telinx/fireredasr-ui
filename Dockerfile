
# 使用官方Python镜像作为基础
FROM python:3.10-slim
 
# 设置工作目录为 /app
WORKDIR /app
 
# 将当前目录内容复制到位于 /app 中的容器中
COPY . /app

# 安装系统依赖
RUN apt-get update && apt-get install -y \
    ffmpeg \
    git \
    libgl1 \
    libsm6 \
    build-essential \
    && rm -rf /var/lib/apt/lists/*


# 安装Python依赖（使用清华源加速）
#RUN pip install --no-cache-dir -r requirements.txt 
RUN pip install --no-cache-dir -r requirements.txt -i https://mirrors.aliyun.com/pypi/simple/

# 暴露Flask端口
EXPOSE 10096

# 启动命令
CMD ["python", "app.py"]
