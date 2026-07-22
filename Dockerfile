# ==========================================
# 基于 uptime-kuma:2-slim
# ==========================================
FROM louislam/uptime-kuma:2-slim

# 切换回 root 进行配置
USER root

# 设置时区
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# 安装依赖，并对系统层做全量安全升级。
# 这样 libgnutls30 等系统库每次重建都会自动吃到最新补丁，
# 不必再为每个新报的 CVE 单独加 --only-upgrade（配合定期重建效果最佳）。
RUN apt-get update && apt-get -y upgrade \
    && apt-get install -y --no-install-recommends zip unzip \
    && rm -rf /var/lib/apt/lists/*

COPY --from=ghcr.io/komari-monitor/komari-agent:latest /app/komari-agent /app/komari-agent

# 设置工作目录
WORKDIR /app

# 1. 删除可能有漏洞的 healthcheck (如果需要)
# 2. 预创建数据目录
# 3. 统一授权
# 4. 给新复制的 komari-agent 执行权限
RUN rm -f /app/extra/healthcheck && \
    chown -R 10014:0 /app && \
    chmod -R 775 /app && \
    chmod +x /app/komari-agent

# 复制脚本并修改所有权
COPY script/entrypoint.sh /app/entrypoint.sh
COPY script/backup.sh /app/backup.sh
COPY script/restore.sh /app/restore.sh
RUN chmod +x /app/*.sh && chown 10014:0 /app/*.sh

# 环境变量
ENV DATA_DIR=/tmp/data/

# 切换用户
USER 10014

# 暴露端口
EXPOSE 3001

# 入口点
CMD ["/app/entrypoint.sh"]
