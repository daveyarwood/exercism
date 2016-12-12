#!/bin/bash

if [ $# -gt 0 ]; then
  NAME=$1
else
  NAME=World
fi

echo "Hello, $NAME!"
