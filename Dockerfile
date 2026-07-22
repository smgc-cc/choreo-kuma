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

RUN mkdir -p /tmp/fix-deps && cd /tmp/fix-deps && \
    npm init -y && \
    # 一次性下载所有需要的包（包括安全版本）
    # protobufjs@7.5.5 修复 CVE-2026-41242
    npm install pg drizzle-orm @napi-rs/canvas fast-xml-parser@5.3.5 protobufjs@7.5.5 && \
    # A. 拔掉原有的软链接钉子
    rm -rf /app/node_modules/pg /app/node_modules/drizzle-orm /app/node_modules/@napi-rs && \
    # B. 物理抹除深埋在 pnpm 虚拟目录里的旧版 fast-xml-parser / protobufjs
    find /app/node_modules -type d -name "fast-xml-parser" -prune -exec rm -rf {} + && \
    find /app/node_modules -type d -name "protobufjs" -prune -exec rm -rf {} + && \
    # C. 将新包统一移交回主目录
    cp -r node_modules/* /app/node_modules/ && \
    # D. 删除 pnpm 的 lock 文件，避免扫描器据此报告已被物理替换的旧版本
    rm -f /app/pnpm-lock.yaml /app/package-lock.json /app/yarn.lock && \
    cd / && rm -rf /tmp/fix-deps

# 复制脚本并修改所有权
COPY entrypoint.sh /app/entrypoint.sh
COPY backup.sh /app/backup.sh
COPY restore.sh /app/restore.sh
RUN chmod +x /app/*.sh && chown 10014:0 /app/*.sh

# 环境变量
ENV DATA_DIR=/tmp/data/

# 切换用户
USER 10014

# 暴露端口
EXPOSE 3001

# 入口点
CMD ["/app/entrypoint.sh"]
