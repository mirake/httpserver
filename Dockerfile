FROM ubuntu:latest
MAINTAINER mirake mirake@docker.com

RUN apt-get update && \
    apt-get install -y nodejs

# Define working directory.
WORKDIR /app

# Expose ports.
EXPOSE 80

# Define default command.
CMD ["/run.sh"]

RUN mkdir -p /app
ADD run.sh  /run.sh
RUN chmod 755 /run.sh
ADD server.js  /app/server.js


