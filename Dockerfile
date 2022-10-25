FROM caddy:latest
ARG DOMAIN
RUN echo "<div style='text-align: center; padding: 10rem;'>${DOMAIN}</div>" > /usr/share/caddy/index.html
COPY Caddyfile /etc/caddy/Caddyfile
CMD caddy run --config /etc/caddy/Caddyfile
