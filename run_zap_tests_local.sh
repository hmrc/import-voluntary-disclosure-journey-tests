#!/bin/bash

ENV=${1:-local}
BROWSER=${2:-chrome}
ZAP_PORT=11000
# check if zap is not running
echo "> starting Zap"
zap.sh -daemon -port ${ZAP_PORT} -config api.disablekey=true &

echo "> Zap is running"

echo "> running test suite for zap"
sbt -Dbrowser=$BROWSER -Denvironment=$ENV $DRIVER -Dzap.proxy=true "testOnly uk.gov.hmrc.test.ui.cucumber.runner.ZapRunner"

sleep 5

echo "> running zap penetration tests"
sbt "testOnly uk.gov.hmrc.test.ui.ZapSpec"

sleep 3

echo "> killing zap"
curl --silent http://localhost:${ZAP_PORT}/HTML/core/action/shutdown >/dev/null
