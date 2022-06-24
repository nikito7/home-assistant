#!/bin/sh

. common.sh

###

token=$(get apitoken)
host=10.1.0.78:8123

curl -s -X GET -H 'Authorization: Bearer '${token} \
http://${host}/api/states/sensor.hot_water \
| awk -F "\"" '{ print $8 }'


#EOF
