FROM debian:wheezy

# Packages
RUN apt-get update --fix-missing
RUN apt-get install -y vim curl silversearcher-ag apt-file git
RUN apt-get autoremove
RUN rm -rf /tmp/*
RUN rm -rf /var/lib/{apt,dpkg,cache,log,tmp}/*

# Locale
RUN apt-get install -y locales
RUN sed -i -e 's/\# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/g' /etc/locale.gen
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV LC_ALL en_US.UTF-8
ENV LC_CTYPE en_US.UTF-8
RUN locale-gen

CMD ["bash"]
