container_tag=$1
docker run \
  -td \
  -p 2020:22 \
  --cpus 2 \
  --memory 2g \
  --memory-swap 2g \
  --restart unless-stopped \
  -v $HOME/repos/:/root/repos/ \
  -t $container_tag
