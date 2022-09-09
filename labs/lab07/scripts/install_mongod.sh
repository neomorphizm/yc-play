#!/bin/bash

curl -fsSL https://mirror.yandex.ru/mirrors/repo.mongodb.org/apt/ubuntu/dists/xenial/mongodb-org/3.2/Release.gpg | apt-key add -
echo "deb [ arch=amd64  trusted=yes ] https://mirror.yandex.ru/mirrors/repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-3.2.list
apt update
apt install -y mongodb-org
systemctl start mongod
systemctl enable mongod
