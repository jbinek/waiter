#!/bin/sh

URL="https://github.com/"

while true
    do
      STATUS=$(curl --connect-timeout 5 -s -o /dev/null -w "%{http_code}\n" $URL)
      echo "Got status $STATUS"
      if [[ $STATUS -eq 200 ]] || [[ $STATUS -eq 302 ]] 
      then
          echo "$URL is UP! Beacons are lit! Bells are ringing!!"
            tput bel
          sleep 1s
      else
          echo "Waiting..."
            sleep 5m
      fi
    done
