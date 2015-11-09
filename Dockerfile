# Pull base image
FROM ubuntu:14.04

# Install dependencies
RUN apt-get update &&\
    apt-get -y install build-essential ruby1.9.1-dev libsqlite3-dev &&\
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Install mailcatcher
RUN gem install mailcatcher --no-rdoc --no-ri

# Expose ports
EXPOSE 1025 1080

CMD ["mailcatcher", "-f", "--ip=0.0.0.0"]
