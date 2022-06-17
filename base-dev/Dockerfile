FROM buildpack-deps:focal

# add zsh
RUN apt-get update && apt-get install -qqy zsh
# switch to zsh
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
SHELL ["/bin/zsh", "-c"]

# ensure local python is preferred over distribution python
ENV PATH /usr/local/bin:$PATH

# http://bugs.python.org/issue19846
# > At the moment, setting "LANG=C" on a Linux system *fundamentally breaks Python 3*, and that's not OK.
ENV LANG C.UTF-8
ENV PYTHON_VERSION 3.9.13

# extra dependencies (over what buildpack-deps already includes)
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -qqy --no-install-recommends \
    tk-dev locales locales-all python-openssl && apt-get clean && rm -rf /var/lib/apt/lists/*

ADD pyenv_setup.sh /pyenv_setup.sh
RUN curl https://pyenv.run | bash
RUN git clone https://github.com/pyenv/pyenv-virtualenvwrapper.git $HOME/.pyenv/plugins/pyenv-virtualenvwrapper
RUN cat /pyenv_setup.sh >> $HOME/.zshrc && source $HOME/.zshrc && pyenv install ${PYTHON_VERSION} && pyenv global ${PYTHON_VERSION}
