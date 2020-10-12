#!/bin/bash

# This is just an example on how we can run hubot with docker.
export PORT=9999
export EXPRESS_PORT=9999
export HUBOT_SLACK_TOKEN=xoxb-1288639819079-1385505017584-LujtALtENip9yJzaqSdS70vg
export HUBOT_ADAPTER=slack
export HUBOT_JENKINS_URL=http://jenkins-blueocean:8080/
export HUBOT_JENKINS_AUTH=chatops:nhy6^YHNnhy6^YHN
##export HUBOT_JENKINS_AUTH=admin:admin
export HUBOT_JENKINS_CRUMB=98f05e89c41c102527fe79b126aedc82f2e1669875fe9364ee10228d0658258b


docker run \
  -e "HUBOT_SLACK_TOKEN=$HUBOT_SLACK_TOKEN" \
  -e "HUBOT_ADAPTER=$HUBOT_ADAPTER" \
  -e "HUBOT_JENKINS_URL=$HUBOT_JENKINS_URL" \
  -e "HUBOT_JENKINS_AUTH=$HUBOT_JENKINS_AUTH" \
  -e "HUBOT_JENKINS_CRUMB=$HUBOT_JENKINS_CRUMB" \
  -p 9999:8080 \
  --network jenkins \
  -td --name hubot \
  --volume F:/hubot-base/scripts:/home/hubot/scripts \
  ankuratudemy/hubot-slack-jenkins
  ##jordan/hubot-slack
  ##thoughtslive/hubot-base

## If you are running Jenkins in a container the approval / proceed fucntionality from slack back to jenkins might not work.
## Only hubotsend message will work due to reverse proxyign issue.