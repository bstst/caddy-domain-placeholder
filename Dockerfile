FROM caddy:latest
ARG HTML
RUN echo "${HTML}" > /usr/share/caddy/index.html
COPY Caddyfile /etc/caddy/Caddyfile
CMD caddy run --config /etc/caddy/Caddyfile
