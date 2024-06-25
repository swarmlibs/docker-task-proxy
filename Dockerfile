ARG CADDY_VERSION="latest"
FROM caddy:${CADDY_VERSION}

ENV TARGET_TASK_ADDR=localhost
COPY Caddyfile /etc/caddy/Caddyfile
