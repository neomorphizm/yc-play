#!/bin/bash

yc compute instance create  reddit-app --hostname=reddit-app \
--create-boot-disk size=10,image-folder-id=standard-images,image-family=ubuntu-1604-lts \
--cores 2 --core-fraction 5 --memory=512MB --platform standard-v2 \
--metadata serial-port-enable=1 \
--metadata-from-file user-data=yc-play/labs/lab06/meta_script.yaml \
--public-ip


