FROM ghcr.io/shadowsocks/ssserver-rust:latest

EXPOSE 8388

CMD ssserver \
    -s 0.0.0.0:8388 \
    -k "${PASSWORD:-happproxy2026}" \
    -m "chacha20-ietf-poly1305"
