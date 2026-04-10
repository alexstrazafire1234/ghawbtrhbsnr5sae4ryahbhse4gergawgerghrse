FROM shadowsocks/shadowsocks-libev:latest

EXPOSE 8388

CMD ss-server \
    -s 0.0.0.0 \
    -p 8388 \
    -k "${PASSWORD}" \
    -m "${METHOD:-chacha20-ietf-poly1305}" \
    -t 300
