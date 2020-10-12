#!/bin/bash

# This is just an example on how we can run hubot locally.
export PORT=9999
export EXPRESS_PORT=9999
export HUBOT_SLACK_TOKEN=<token>
export HUBOT_ADAPTER=slack
export HUBOT_JENKINS_URL=http://localhost:8080/
export HUBOT_LOG_LEVEL=trace
export HUBOT_JENKINS_AUTH=chatops:<password>
export HUBOT_JENKINS_AUTH=admin:admin
export HUBOT_JENKINS_CRUMB=

./bin/hubot
