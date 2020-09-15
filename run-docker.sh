#!/bin/bash

# This is just an example on how we can run hubot with docker.
export PORT=9999
export EXPRESS_PORT=9999
export HUBOT_SLACK_TOKEN=<clasic slack bot token>
export HUBOT_ADAPTER=slack
export HUBOT_JENKINS_URL=http://Jenkinshost:port
export HUBOT_JENKINS_AUTH=chatops:nhy6^YHNnhy6^YHN

docker run \
  -e "HUBOT_SLACK_TOKEN=$HUBOT_SLACK_TOKEN" \
  -e "HUBOT_ADAPTER=$HUBOT_ADAPTER" \
  -e "HUBOT_JENKINS_URL=$HUBOT_JENKINS_URL" \
  -e "HUBOT_JENKINS_AUTH=$HUBOT_JENKINS_AUTH" \
  -p 9999:8080 \
  --network jenkins \
  -td --name hubot \
  thoughtslive/hubot-base

## If you are running Jenkins in a container the approval / proceed fucntionality from slack back to jenkins might not work.
## Only hubotsend message will work due to reverse proxyign issue.