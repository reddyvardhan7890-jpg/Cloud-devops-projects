#!/bin/bash

EMAIL=$1
BASE_DIR="/usr/lib/cgi-bin"

echo "bash $BASE_DIR/send_preparing.sh $EMAIL" | at now + 5 minutes

echo "bash $BASE_DIR/send_completed.sh $EMAIL" | at now + 10 minutes