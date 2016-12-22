#!/bin/bash

# if the date is of the form YYYY-MM-DDZ (i.e. date without time),
# convert it to the form YYYY-MM-DD HH:MM:SSZ
ARG_LENGTH=${#1}
if [ $ARG_LENGTH -eq 11 ]; then
  FROM_DATE="${1:0:10} 00:00:00Z"
else
  FROM_DATE=$1
fi

FROM_UNIX_TIME="$(date -ju -f '%Y-%m-%d %H:%M:%SZ' "$FROM_DATE" '+%s')"

GIGASECOND="$(echo $FROM_UNIX_TIME + 1000000000 | bc)"

date -ju -r $GIGASECOND '+%a %b %-d %H:%M:%S UTC %Y'
