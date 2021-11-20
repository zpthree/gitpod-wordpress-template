FROM gitpod/workspace-full:latest

USER root

RUN apt-get update

# install wp-cli
RUN apt-get install -y wget
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp