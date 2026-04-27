# VKGRAG

## Deployment

### Prerequisites

- Python 3.10+
- `uv` or `pip`
- Bun, required when building the Web UI from source
- Docker and Docker Compose, required for Docker deployment
- A configured `.env` file

Create the runtime configuration before starting the service:

```bash
cp env.example .env
```

Update `.env` with your LLM, embedding, storage, and service settings.

### Deploy From PyPI

```bash
uv pip install "vkgrag[api]"
# Or:
# pip install "vkgrag[api]"
```

### Deploy From Source

```bash
git clone https://github.com/HKUDS/VKGRAG.git
cd VKGRAG

uv sync --extra api
source .venv/bin/activate
# Windows:
# .venv\Scripts\activate

cp env.example .env
```

Build the Web UI:

```bash
cd vkgrag_webui
bun install --frozen-lockfile
bun run build
cd ..
```

### Deploy With Docker Compose

```bash
git clone https://github.com/HKUDS/VKGRAG.git
cd VKGRAG
cp env.example .env
docker compose up -d
```

Historical Docker images are available at:

```text
https://github.com/HKUDS/VKGRAG/pkgs/container/vkgrag
```

### Offline Deployment

For offline or air-gapped environments, see:

```text
docs/OfflineDeployment.md
```

## Startup

### Start The VKGRAG Server

```bash
vkgrag-server
```

Alternative local development command:

```bash
uvicorn vkgrag.api.vkgrag_server:app --reload
```

### Start With Docker Compose

```bash
docker compose up
```

Run in the background:

```bash
docker compose up -d
```

Stop the services:

```bash
docker compose down
```

### Start The Web UI In Development

```bash
cd vkgrag_webui
bun install
bun run dev
```
