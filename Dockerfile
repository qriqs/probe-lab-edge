# Edge endpoint: HTTP/WebSocket relay on :8080 behind the platform TLS proxy.
# The Xray binary is copied into plain Alpine (the stock image has no shell).
FROM teddysun/xray:latest AS xraybin

FROM alpine:3.20
COPY --from=xraybin /usr/bin/xray /usr/local/bin/xray
COPY config.template.json /etc/xray/config.template.json
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENV VLESS_UUID=
ENV VLESS_PATH=/ws
EXPOSE 8080
ENTRYPOINT ["/entrypoint.sh"]
