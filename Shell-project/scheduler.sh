#!/bin/bash

EMAIL=$1

echo "bash $(pwd)/scripts/send_preparing.sh $EMAIL" | at now + 5 minutes

echo "bash $(pwd)/scripts/send_completed.sh $EMAIL" | at now + 10 minutes