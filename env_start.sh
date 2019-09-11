#!/bin/bash
container_passd=$(docker logs $(docker ps -f volume=$HOME/repos -q) | grep 'login password:' | tail -1 | sed 's/^.*: //')
sshpass -p $container_passd ssh -p 2020 -L 5000:localhost:5000 -R 52698:localhost:52698 root@localhost
