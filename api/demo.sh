#!/bin/sh

. common.sh

###

token=$(get apitoken)
host=10.1.0.78:8123

curl -X POST -H 'Authorization: Bearer '${token} -H 'Content-Type: application/json' \
http://${host}/api/states/sensor.hot_water


#EOF
