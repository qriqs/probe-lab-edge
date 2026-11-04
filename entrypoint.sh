#!/bin/sh
set -e
if [ -z "$VLESS_UUID" ]; then
  echo "VLESS_UUID is required" >&2
  exit 1
fi
PATH_SAFE="${VLESS_PATH:-/ws}"
sed -e "s|__UUID__|$VLESS_UUID|g" -e "s|__PATH__|$PATH_SAFE|g" \
  /etc/xray/config.template.json > /etc/xray/config.json
exec /usr/local/bin/xray run -c /etc/xray/config.json
