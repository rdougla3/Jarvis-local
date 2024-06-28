#!/bin/bash
VAR='{"model": "'$1'","prompt": "'$2'",'
VAR+='"stream": false, "keep_alive": -1}'

curl http://localhost:11434/api/generate -d "$VAR"