container_tag=$1

if [[ "$OSTYPE" == "darwin"* ]]; then
  os_ssh_auth_sock=/run/host-services/ssh-auth.sock
else
  os_ssh_auth_sock=${SSH_AUTH_SOCK}
fi

docker run \
  -td \
  -p 2020:22 \
  --cpus 2 \
  --memory 2g \
  --memory-swap 2g \
  --restart unless-stopped \
  --volume $HOME/repos/:/root/repos/ \
  --mount type=bind,source=${os_ssh_auth_sock},target=/tmp/ssh_agent.sock \
  --env SSH_AUTH_SOCK=/tmp/ssh_agent.sock \
  -t $container_tag
