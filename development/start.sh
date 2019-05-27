# enable sshd service
sudo systemctl enable ssh
sudo service ssh restart

ROOT_PASSWORD=`pwgen -c -n -1 12`
echo "root:$ROOT_PASSWORD" | chpasswd
echo "root login password: $ROOT_PASSWORD"
