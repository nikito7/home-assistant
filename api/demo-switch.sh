#!/bin/sh

secrets=./secrets.yaml
token=$(cat $secrets | grep apitoken | awk -F ": " '{ print $2 }')
host=10.1.0.78:8123

curl -X POST -H 'Authorization: Bearer '${apitoken} \
-H "Content-Type: application/json" \
-d '{"entity_id": "switch.athom_p1"}' \
http://${host}/api/services/switch/turn_on

#EOF
