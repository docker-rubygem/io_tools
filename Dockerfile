FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.2.5

RUN gem install io_tools --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["io-server"]
CMD ["--help"]
