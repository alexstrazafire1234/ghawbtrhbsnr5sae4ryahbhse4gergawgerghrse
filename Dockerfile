FROM debian:bookworm-slim

RUN apt-get update && apt-get install -y curl ca-certificates && \
    curl -fL https://github.com/shadowsocks/shadowsocks-rust/releases/latest/download/shadowsocks-v1.21.2.x86_64-unknown-linux-gnu.tar.xz \
    -o /tmp/ss.tar.xz && \
    tar -xf /tmp/ss.tar.xz -C /usr/local/bin ssserver && \
    chmod +x /usr/local/bin/ssserver && \
    rm /tmp/ss.tar.xz && \
    apt-get remove -y curl && apt-get autoremove -y && rm -rf /var/lib/apt/lists/*

EXPOSE 8388

CMD ssserver \
    -s 0.0.0.0:8388 \
    -k "${PASSWORD:-happproxy2026}" \
    -m "chacha20-ietf-poly1305" \
    --timeout 300
