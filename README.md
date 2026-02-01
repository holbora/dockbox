# Dockbox

Docker sandbox template that extends `docker/sandbox-templates:claude-code` with Docker MCP Gateway pre-installed.

## Usage

```bash
docker sandbox create --template ghcr.io/holbora/dockbox:latest my-sandbox ~/my-project
```

## Helpers

Copy the Makefile to your project for convenience:

```bash
curl -o Makefile https://raw.githubusercontent.com/holbora/dockbox/main/helpers/Makefile
```

Then use:

```bash
make create   # create sandbox with current directory
make shell    # open shell in sandbox
make rm       # remove sandbox
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
