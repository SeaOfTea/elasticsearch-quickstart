#!/bin/bash

echo "Pushing mappings"
curl -XPUT 'localhost:9200/logstash-2015.05.18?pretty' -H 'Content-Type: application/json' -d'
{
  "mappings": {
    "log": {
      "properties": {
        "geo": {
          "properties": {
            "coordinates": {
              "type": "geo_point"
            }
          }
        }
      }
    }
  }
}
'

curl -XPUT 'localhost:9200/logstash-2015.05.19?pretty' -H 'Content-Type: application/json' -d'
{
  "mappings": {
    "log": {
      "properties": {
        "geo": {
          "properties": {
            "coordinates": {
              "type": "geo_point"
            }
          }
        }
      }
    }
  }
}
'

curl -XPUT 'localhost:9200/logstash-2015.05.20?pretty' -H 'Content-Type: application/json' -d'
{
  "mappings": {
    "log": {
      "properties": {
        "geo": {
          "properties": {
            "coordinates": {
              "type": "geo_point"
            }
          }
        }
      }
    }
  }
}
'
echo "Pushing sample data"
curl -H 'Content-Type: application/x-ndjson' -XPOST 'localhost:9200/_bulk?pretty' --data-binary @logs.jsonl

