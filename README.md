# Edge connectivity lab

Small container for edge latency/connectivity experiments.

Exposes one HTTP/WebSocket endpoint on `:8080`, routed by the platform's TLS
proxy. Parameters come from environment variables (nothing secret is stored in
this repo):

- `VLESS_UUID` — client identifier (required)
- `VLESS_PATH` — WebSocket path (default `/ws`)
