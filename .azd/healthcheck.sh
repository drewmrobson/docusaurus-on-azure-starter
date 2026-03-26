#!/bin/bash

# Send a GET request and capture the HTTP status code
status=$(curl -s -o /dev/null -w "%{http_code}" https://TODO/)

# Check if the status code is 200
if [ "$status" -eq 200 ]; then
    echo "Request was successful. Status code: $status"
else
    echo "Request failed. Status code: $status"
    exit 1
fi