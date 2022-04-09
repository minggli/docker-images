FROM minggli/base-dev

ENV LANG C.UTF-8
SHELL ["/bin/bash", "-c"]

RUN apt-get update
RUN apt-get install -qqy zsh tmux vim software-properties-common sudo tmate hub mosh iptables openssh-server pwgen supervisor
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

RUN sudo curl -o /usr/local/bin/rmate https://raw.githubusercontent.com/aurora/rmate/master/rmate && sudo chmod +x /usr/local/bin/rmate
RUN echo "PermitEmptyPasswords yes" >> /etc/ssh/sshd_config \
  && echo "PermitRootLogin yes" >> /etc/ssh/sshd_config

RUN echo "eval \$(ssh-agent -s) > /dev/null " >> ~/.profile

ADD start.sh /start.sh
CMD /start.sh
