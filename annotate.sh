#!/bin/bash

GREP=$(grep -R "// TODO:")

while IFS=':' read -r path message; do
  echo "${path} >>> ${message}"
done <<< "$GREP"
