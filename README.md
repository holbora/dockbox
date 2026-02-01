# Dockbox

Docker sandbox template that extends `docker/sandbox-templates:claude-code` with Docker MCP Gateway pre-installed.

## Build

```bash
docker buildx build --platform linux/amd64,linux/arm64 -t claude-code-mcp:latest .
```

## Usage

```bash
docker sandbox create --template claude-code-mcp:latest --load-local-template claude ~/my-project
```

## Pre-configured Servers

- context7

Edit `registry.yaml` to add more servers before building.

## Inside the Sandbox

```bash
docker mcp server ls
docker mcp tools ls
docker mcp server enable <server>
```

## References

- [MCP Gateway Manual Installation](https://docs.docker.com/ai/mcp-catalog-and-toolkit/mcp-gateway/#install-the-mcp-gateway-manually)
- [MCP Gateway Releases](https://github.com/docker/mcp-gateway/releases)
