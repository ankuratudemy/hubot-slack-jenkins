#!/bin/bash

# This is just an example on how we can run hubot locally.
export PORT=9999
export EXPRESS_PORT=9999
export HUBOT_SLACK_TOKEN=xoxb-1288639819079-1385505017584-LujtALtENip9yJzaqSdS70vg
export HUBOT_ADAPTER=slack
export HUBOT_JENKINS_URL=http://localhost:8080/
export HUBOT_LOG_LEVEL=trace
##export HUBOT_JENKINS_AUTH=chatops:nhy6^YHNnhy6^YHN
export HUBOT_JENKINS_AUTH=admin:admin
export HUBOT_JENKINS_CRUMB=98f05e89c41c102527fe79b126aedc82f2e1669875fe9364ee10228d0658258b

./bin/hubot
