# VKGRAG

## 部署

### 前置要求

- Python 3.10+
- `uv` 或 `pip`
- Bun，从源码构建 Web UI 时需要
- Docker 和 Docker Compose，使用 Docker 部署时需要
- 已配置的 `.env` 文件

启动服务前先创建运行配置：

```bash
cp env.example .env
```

根据实际环境修改 `.env` 中的 LLM、Embedding、存储和服务配置。

### 从 PyPI 部署

```bash
uv pip install "vkgrag[api]"
# 或：
# pip install "vkgrag[api]"
```

### 从源码部署

```bash
git clone https://github.com/HKUDS/VKGRAG.git
cd VKGRAG

uv sync --extra api
source .venv/bin/activate
# Windows：
# .venv\Scripts\activate

cp env.example .env
```

构建 Web UI：

```bash
cd vkgrag_webui
bun install --frozen-lockfile
bun run build
cd ..
```

### 使用 Docker Compose 部署

```bash
git clone https://github.com/HKUDS/VKGRAG.git
cd VKGRAG
cp env.example .env
docker compose up -d
```

Docker 镜像历史版本地址：

```text
https://github.com/HKUDS/VKGRAG/pkgs/container/vkgrag
```

### 离线部署

离线或内网环境部署请参考：

```text
docs/OfflineDeployment.md
```

## 启动

### 启动 VKGRAG Server

```bash
vkgrag-server
```

本地开发也可以使用：

```bash
uvicorn vkgrag.api.vkgrag_server:app --reload
```

### 使用 Docker Compose 启动

```bash
docker compose up
```

后台启动：

```bash
docker compose up -d
```

停止服务：

```bash
docker compose down
```

### 启动 Web UI 开发服务

```bash
cd vkgrag_webui
bun install
bun run dev
```
