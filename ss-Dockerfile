FROM shadowsocks/shadowsocks-libev:latest

EXPOSE 8388

CMD ss-server \
    -s 0.0.0.0 \
    -p 8388 \
    -k "${PASSWORD}" \
    -m aes-256-gcm \
    -t 300 \
    --fast-open
