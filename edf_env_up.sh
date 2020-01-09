#!/bin/bash
container_tag=$1
docker run -td -p 2020:22 \
	--restart=always \
	-v $HOME/.ssh/:/root/.ssh/ \
	-v $HOME/repos/:/root/repos/ \
	-v $HOME/aws-mfa-script-master/:/root/aws-mfa-script-master/ \
	-t $container_tag
