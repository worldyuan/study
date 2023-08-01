#!/bin/bash

#API_KEY=lxwiC1qHZtJHUNzqXuA7PIznGO-USwTECaweHYqp
MAIL=Clould.first@gmail.com
API_KEY=c7a13d0579e511a98e5f0b267235ed92e1a01

proxied=false
[ ! -z "$4"] && proxied=true

echo "类型:$1 主机名:$2 值:$3 是否代理:$proxied"
echo "X-Auth-Key: $API_KEY"

curl -X GET "https://api.cloudflare.com/client/v4/zones" \
     -H "X-Auth-Email: $MAIL" \
     -H "X-Auth-Key: $API_KEY" \
     -H "Content-Type: application/json"


curl --request POST \
  --url https://api.cloudflare.com/client/v4/zones/zone_identifier/dns_records \
  --header 'Content-Type: application/json' \
  --header 'X-Auth-Key: $API_KEY' \
  --data '{
  "content": "$3",
  "name": "$2",
  "proxied": $proxied,
  "type": "$1",
  "comment": "",
  "tags": [
    "owner:dns-team"
  ],
  "ttl": 3600
}'