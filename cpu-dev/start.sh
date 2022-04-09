# enable sshd service
sudo systemctl enable ssh
sudo service ssh restart

sudo chsh -s $(which zsh)
sudo passwd -d root

# Launch supervisor
supervisord -n
