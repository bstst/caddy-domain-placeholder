FROM caddy:latest
ARG TEXT
RUN echo "<div style='text-align: center; padding: 10rem; font-family: monospace;'>${TEXT}</div>" > /usr/share/caddy/index.html
COPY Caddyfile /etc/caddy/Caddyfile
CMD caddy run --config /etc/caddy/Caddyfile
