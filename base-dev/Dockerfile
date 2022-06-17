FROM buildpack-deps:focal

# ensure local python is preferred over distribution python
ENV PATH /usr/local/bin:$PATH

# http://bugs.python.org/issue19846
# > At the moment, setting "LANG=C" on a Linux system *fundamentally breaks Python 3*, and that's not OK.
ENV LANG C.UTF-8

ENV PYTHON_VERSION 3.9.13

# extra dependencies (over what buildpack-deps already includes)
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -qqy --no-install-recommends \
    tk-dev locales locales-all python-openssl && rm -rf /var/lib/apt/lists/*

ADD pyenv_setup.sh /pyenv_setup.sh
RUN curl https://pyenv.run | bash && cat /pyenv_setup.sh >> ~/.zshrc && source ~/.zshrc
RUN git clone https://github.com/pyenv/pyenv-virtualenvwrapper.git $(pyenv root)/plugins/pyenv-virtualenvwrapper
RUN pyenv install ${PYTHON_VERSION} && pyenv global ${PYTHON_VERSION}
