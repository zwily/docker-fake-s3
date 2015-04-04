FROM ruby:2.1

RUN gem install fakes3

EXPOSE 3000

RUN mkdir -p /var/lib/s3

ENTRYPOINT [ "/usr/local/bundle/bin/fakes3", "-p", "3000", "-r", "/var/lib/s3", "-h", "0.0.0.0" ]
