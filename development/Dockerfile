FROM python3-ubuntu18

RUN apt-get update
RUN apt-get install -qqy tmux vim software-properties-common sudo

RUN apt-add-repository -y ppa:cpick/hub && \
    apt-add-repository -y ppa:keithw/mosh
RUN apt-get update && apt-get install -qqy tmate hub mosh

RUN mkdir ~/bin
RUN cd ~/bin && git clone https://github.com/minggli/dotfiles.git
RUN touch ~/.bashrc && echo ". ~/bin/dotfiles/bashrc" >> ~/.bashrc
RUN touch ~/.bash_profile && echo ". ~/.bashrc" >> ~/.bash_profile && \
    /bin/bash -c "source ~/.bash_profile"
