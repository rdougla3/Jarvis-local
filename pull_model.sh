#!/bin/bash
curl http://localhost:11434/api/pull -d '{
  "name": "'$1'"
}'
