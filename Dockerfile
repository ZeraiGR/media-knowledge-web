FROM node:22.23.2-alpine AS build
WORKDIR /src
COPY package*.json ./
RUN npm ci
COPY index.html tsconfig.json ./
COPY src ./src
RUN npm run build
FROM caddy:2.11.4-alpine
RUN setcap -r /usr/bin/caddy
COPY Caddyfile /etc/caddy/Caddyfile
COPY --from=build /src/dist /srv
EXPOSE 8080
