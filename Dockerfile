FROM caddy:latest
ARG domain
RUN echo "${domain}" > /usr/share/caddy/index.html
COPY Caddyfile /etc/caddy/Caddyfile
CMD caddy run --config /etc/caddy/Caddyfile
