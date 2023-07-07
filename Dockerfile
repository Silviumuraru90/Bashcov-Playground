FROM ruby:2.6.3-buster

RUN     apt-get update --yes

RUN     apt-get upgrade --yes

RUN     apt-get install jq --yes

RUN     useradd -ms /bin/bash silviu

RUN     bash --version \
        && gem install bundler \
        && bundler --version \
        && gem install bashcov \
        && bashcov --version \
        && ruby --version

RUN     gem update bashcov

ENV USER silviu
USER silviu
WORKDIR /home/newuser