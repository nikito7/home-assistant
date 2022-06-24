#!/bin/sh

secrets=./secrets.yaml

###

function get()
{
cat $secrets | grep $1 | awk -F ": " '{ print $2 }'
}

###

token=$(get apitoken)
host=10.1.0.78:8123

curl -X POST -H 'Authorization: Bearer '${apitoken} \
-H "Content-Type: application/json" \
-d '{"entity_id": "switch.athom_p1"}' \
http://${host}/api/services/switch/turn_on

#EOF
