FROM python3-ubuntu18

RUN apt-get update \
    && apt-get install -qqy tmux vim software-properties-common sudo
RUN add-apt-repository -y ppa:cpick/hub \
    && apt-get update && apt-get install hub

RUN mkdir ~/bin
RUN cd ~/bin && git clone https://github.com/minggli/dotfiles.git
RUN touch ~/.bashrc && echo ". ~/bin/dotfiles/bashrc" >> ~/.bashrc
RUN touch ~/.bash_profile && echo ". ~/.bashrc" >> ~/.bash_profile && \
    /bin/bash -c "source ~/.bash_profile"
