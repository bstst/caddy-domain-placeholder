FROM caddy:latest
ARG DOMAIN
RUN echo "${DOMAIN}" > /usr/share/caddy/index.html
COPY Caddyfile /etc/caddy/Caddyfile
CMD caddy run --config /etc/caddy/Caddyfile
