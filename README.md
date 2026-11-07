# Media Knowledge web

Small TypeScript web client. Currently shows infrastructure status and the application download link. Public media playback is planned separately. Current deployment is accessible only through Tailscale.

## Development

Node 22.23.2. Run `npm ci`, `npm run build`, or `npm run dev`. The frontend requests the same-origin `/api/readyz` route; Caddy forwards it to the Go service. A local Vite preview without the API reports the server as unavailable.

## Releases

Push a stable `vX.Y.Z` tag. CI builds a container, publishes it to GHCR and deploys the exact digest to VPS. Caddy serves static files and the same-origin API. Media proxying is not configured.

## Project and operations

[Architecture and infrastructure](https://github.com/ZeraiGR/media-knowledge) · [Release and deployment guide](https://github.com/ZeraiGR/media-knowledge/blob/main/docs/infrastructure.md) · [GitHub Project](https://github.com/users/ZeraiGR/projects/1) · [Detailed documentation](https://github.com/ZeraiGR/personal-docs/tree/main/src/content/docs/personal/media-knowledge)

Secrets, private deployment addresses, owner media and local AI models stay outside Git.
