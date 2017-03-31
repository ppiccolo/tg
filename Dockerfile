FROM ubuntu:14.04

RUN apt-get update && apt-get install -y libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev libevent-dev \
    libjansson-dev libpython-dev make build-essential
RUN apt-get install -y git

RUN git clone git@gitlab.medusa-labs.lan:medusa.common/telegram-cli.git

RUN ./configure && make



