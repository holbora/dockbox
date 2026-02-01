FROM docker/sandbox-templates:claude-code

ARG MCP_VERSION=v0.38.0
ARG TARGETARCH
ARG AGENT_HOME=/home/agent

LABEL org.opencontainers.image.source="https://github.com/docker/mcp-gateway"
LABEL org.opencontainers.image.description="Claude Code sandbox with Docker MCP Gateway"

USER root

RUN mkdir -p ${AGENT_HOME}/.docker/cli-plugins ${AGENT_HOME}/.docker/mcp && \
    curl -fsSL "https://github.com/docker/mcp-gateway/releases/download/${MCP_VERSION}/docker-mcp-linux-${TARGETARCH}.tar.gz" \
    | tar -xz -C ${AGENT_HOME}/.docker/cli-plugins && \
    chmod +x ${AGENT_HOME}/.docker/cli-plugins/docker-mcp && \
    chown -R agent:agent ${AGENT_HOME}/.docker

COPY --chown=agent:agent registry.yaml ${AGENT_HOME}/.docker/mcp/registry.yaml
COPY --chown=agent:agent config.yaml ${AGENT_HOME}/.docker/mcp/config.yaml

USER agent
