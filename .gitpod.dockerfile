FROM gitpod/workspace-full:latest

USER root

# Install custom tools, runtime, etc.

RUN apt-get update && \
  apt-get install -y zsh && \
  apt-get install -y ruby-full

RUN gem install colorls
RUN gem install pulsar

RUN rm /home/gitpod/.rvm/gems/ruby-2.7.4@global/specifications/default/bundler-2.1.4.gemspec
RUN gem install bundler -v 1.17.3 --default

RUN cd $HOME/pulsar
RUN bundle _1.17.3_ install
RUN cd $current_dir

USER gitpod

# start zsh

CMD [ "zsh" ]