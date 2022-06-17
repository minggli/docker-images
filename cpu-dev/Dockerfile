FROM minggli/base-dev

ENV LANG C.UTF-8

RUN apt-get update
RUN apt-get install -qqy tmux vim software-properties-common sudo tmate hub mosh iptables openssh-server pwgen supervisor

RUN sudo curl -o /usr/local/bin/rmate https://raw.githubusercontent.com/aurora/rmate/master/rmate && sudo chmod +x /usr/local/bin/rmate
RUN echo "PermitEmptyPasswords yes" >> /etc/ssh/sshd_config \
  && echo "PermitRootLogin yes" >> /etc/ssh/sshd_config

ADD start.sh /start.sh
CMD /start.sh
