FROM gitpod/workspace-mysql

USER root

RUN apt-get update

# install wp-cli
RUN apt-get install -y wget
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

# xdg-utils
RUN apt-get install -y xdg-utils

# setup php 7.4
RUN apt install -y php7.4
RUN apt-get install -y php7.4-cli php7.4-json php7.4-common php7.4-mysql php7.4-zip php7.4-gd php7.4-mbstring php7.4-curl php7.4-xml php7.4-bcmath
RUN update-alternatives --set php /usr/bin/php7.4
