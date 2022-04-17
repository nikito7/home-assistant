#!/bin/sh

. common.sh

###

token=$(get apitoken)
host=10.1.0.78:8123

curl -X GET -H 'Authorization: Bearer '${token} \
http://${host}/api/states/sensor.hot_water


#EOF
