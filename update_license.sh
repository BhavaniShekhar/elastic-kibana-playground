#!/bin/sh

# check
curl -XGET -u elastic:changeme 'http://localhost:9200/_xpack/license'
# update
curl -XPUT -u elastic:changeme 'http://localhost:9200/_xpack/license?acknowledge=true' -H "Content-Type: application/json" -d @licens.json