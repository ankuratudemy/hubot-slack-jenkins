FROM node:latest
MAINTAINER "Ankur Gupta" <ankuratudemy@gmail.com>

# Install CoffeeScript, Hubot CoffeeScript version 2 and above are not compatible with hubot yet
RUN \
  npm install -g coffeescript@1.12.7 hubot yo generator-hubot && \
  rm -rf /var/lib/apt/lists/*

# Make user for Hubot
RUN groupadd -g 501 hubot && \
  useradd -m -u 501 -g 501 hubot

USER hubot
WORKDIR /home/hubot

COPY ["external-scripts.json","package.json","/home/hubot/"]
ADD bin /home/hubot/bin
ADD scripts /home/hubot/scripts

RUN npm install --silent

CMD ["/bin/sh", "-c", " bin/hubot"]

