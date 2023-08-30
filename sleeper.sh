#!/bin/bash

echo "First line of output"

if [ -z "$SECRET_KEY" ]; then
    >&2 echo "Missing SECRET_KEY"
    exit 1
fi

if [ -z "$SLEEP_TIME" ]; then
    >&2 echo "Missing SLEEP_TIME"
    exit 1
fi

if [ -z "$HOST_NAME" ]; then
    >&2 echo "Missing HOST_NAME"
    exit 1
fi

if [ "$SECRET_KEY" == "topsecretstring" ]; then
    echo "Provided correct SECRET_KEY"
else
    >&2 echo "The SECRET_KEY is wrong!"
    exit 1
fi


ping -c 3 $HOST_NAME

echo "Sleeping $SLEEP_TIME seconds"
sleep $SLEEP_TIME || exit 1

echo "Thank you!"

>&2 echo "Thank you in STDERR as well!"

exit 0
