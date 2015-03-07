FROM ubuntu:14.04

MAINTAINER renlinx007

# setup elixir
RUN \
  apt-get install -y wget && \
  wget http://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && \
  dpkg -i erlang-solutions_1.0_all.deb && \
  apt-get update && \
  apt-get install -y elixir

VOLUME ["/codes"]

# setup working directory

ENV HOME /codes
WORKDIR /codes

CMD ["bash"]
