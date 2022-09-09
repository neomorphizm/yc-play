#!/bin/bash

apt update
sleep 30s
apt upgrade -y
sleep 30s
apt install tor -y
# sed -i 's/^#dynamic_chain/dynamic_chain/g' /etc/proxychains.conf
# sed -i 's/^strict_chain/#strict_chain/g' /etc/proxychains.conf
# sed -i 's/^random_chain/#random_chain/g' /etc/proxychains.conf
# grep -qxF 'socks5  127.0.0.1 9050' /etc/proxychains.conf || echo 'socks5  127.0.0.1 9050' >> /etc/proxychains.conf
# echo 'socks5  62.171.190.113 1080' >> /etc/proxychains.conf
# echo 'socks5  188.165.231.180 55654' >> /etc/proxychains.conf
service tor stop
service tor start
