#!/bin/bash

set -e

host="$1"
username="$2"
password="$3"
shift 3
cmd="$@"

until [ "$(curl -s -u $username:$password http://$host/api/system/health | grep -o '"health":"[^"]*"' | awk -F: '{print $2}')" = "\"GREEN\"" ]; 
do
  echo 'Waiting for SonarQube to be up...'
  sleep 5
done

echo "SonarQube is up - executing command"

exec $cmd
