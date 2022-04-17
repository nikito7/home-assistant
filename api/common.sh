#!/bin/sh

### common.sh ###

secrets=./secrets.yaml

###

function get()
{
cat $secrets | grep $1 | awk -F ": " '{ print $2 }'
}

#EOF
