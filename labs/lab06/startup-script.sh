#!/bin/bash

cd /run/appinit
./install_proxychains.sh
./install_mongod.sh
./install_ruby.sh
./deploy.sh
