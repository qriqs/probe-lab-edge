# Edge connectivity lab

Small container for edge latency/connectivity experiments.

Exposes one HTTP/WebSocket endpoint on `:3000` (the platform publishes a single
port per app, routed through its TLS proxy on 443). Parameters come from
environment variables (nothing secret is stored in this repo):

- `VLESS_UUID` — client identifier (required)
- `VLESS_PATH` — WebSocket path (default `/ws`)
