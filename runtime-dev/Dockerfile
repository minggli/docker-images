FROM minggli/base-dev

RUN apt-get update
RUN apt-get install -qqy tmux vim software-properties-common sudo

RUN apt-add-repository -y ppa:cpick/hub && \
    apt-add-repository -y ppa:keithw/mosh
RUN apt-get update && apt-get install -qqy tmate hub mosh iptables openssh-server pwgen rpl

RUN mkdir ~/bin
RUN cd ~/bin && git clone https://github.com/minggli/dotfiles.git
RUN touch ~/.bashrc && echo ". ~/bin/dotfiles/bashrc" >> ~/.bashrc
RUN touch ~/.bash_profile && echo ". ~/.bashrc" >> ~/.bash_profile && \
    /bin/bash -c "source ~/.bash_profile"

RUN rpl "PermitRootLogin without-password" "PermitRootLogin yes" /etc/ssh/sshd_config

EXPOSE 22

ADD start.sh /start.sh

CMD /start.sh

